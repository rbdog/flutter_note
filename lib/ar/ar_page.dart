import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:arkit_plugin/arkit_plugin.dart';

/// AR画面
class ARPage extends HookWidget {
  const ARPage({super.key});

  // ノードを作る
  ARKitNode createNode(ARKitPlaneAnchor anchor) {
    final color = ARKitMaterialProperty.color(Colors.red);
    final material = ARKitMaterial(diffuse: color);
    final shape = ARKitBox(materials: [material]);
    return ARKitNode(geometry: shape);
  }

  @override
  Widget build(BuildContext context) {
    // ARKit
    final arkit = useState<ARKitController?>(null);
    // 見つけた平面のアンカーID
    final anchorId = useState<String?>(null);
    // Widgetの位置
    final offset = useState(Offset.zero);

    useEffect(() {
      return () {
        // あと片付け
        arkit.value?.onAddNodeForAnchor = null;
        arkit.value?.onUpdateNodeForAnchor = null;
        arkit.value?.dispose();
      };
    }, const []);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // ARカメラ画面
          ARKitSceneView(
            // AR準備完了
            onARKitViewCreated: (controller) {
              arkit.value = controller;
              // 平面を見つけたとき
              arkit.value!.onAddNodeForAnchor = (anchor) {
                if (anchorId.value != null) return;
                if (anchor is! ARKitPlaneAnchor) return;
                // アンカーIDを保存
                anchorId.value = anchor.identifier;
                // ノードを作成して追加
                final node = createNode(anchor);
                arkit.value!.add(node, parentNodeName: anchor.nodeName);
              };
              // カメラが移動したとき
              arkit.value?.onUpdateNodeForAnchor = (anchor) async {
                if (anchor.identifier != anchorId.value) return;
                // アンカーのワールド座標 (3Dデータ)
                final translation = anchor.transform.getTranslation();
                // アンカーのスクリーン座標 (2Dデータ)
                final projected = await arkit.value!.projectPoint(translation);
                if (projected == null) return;
                // Widgetの位置を変更
                offset.value = Offset(projected.x, projected.y);
              };
            },
            // 地面を検出する
            planeDetection: ARPlaneDetection.horizontal,
          ),
          // アンカーがあるかどうか
          anchorId.value == null
              // ないときは何も表示しない
              ? const SizedBox.shrink()
              // あるときは Flutterロゴ を表示する
              : Positioned(
                  left: offset.value.dx,
                  top: offset.value.dy,
                  child: const FlutterLogo(),
                ),
        ],
      ),
    );
  }
}
