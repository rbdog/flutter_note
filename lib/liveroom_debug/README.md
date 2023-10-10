# Liveroom 調査中

`Liveroom` が正常に動かない報告をいただいたので調査中です

1. サーバーのコードを自分で書いて起動してみます

- `server.ts` を作成して以下をそのままコピペします

```server.ts
import { Liveroom } from "https://deno.land/x/liveroom@1.8/mod.ts";

// 1. instance
const liveroom = new Liveroom();

function onRequest(req: Deno.RequestEvent, path: string) {
  // 2. API
  if (req.request.method === "GET" && path === "/liveroom/create") {
    const response = liveroom.callCreateApi(req);
    req.respondWith(response);
  }

  // 3. API
  if (req.request.method === "GET" && path === "/liveroom/join") {
    const response = liveroom.callJoinApi(req);
    req.respondWith(response);
  }
}

// Start Deno Server
const server = Deno.listen({ port: 3300 });

console.log("Liveroom ポート: 3300");

for await (const conn of server) {
  const httpConn = Deno.serveHttp(conn);
  for await (const req of httpConn) {
    const url = new URL(req.request.url);
    onRequest(req, url.pathname);
  }
}
```

- 作ったサーバーを動かします。powershell やターミナルなど

```
deno run --allow-net xxx/yyy/zzz/server.ts
```

注意: xxx/yyy/zzz の部分はコードを置いた場所です

- Flutter 側のコードを変えます

```
// main.dart 28行目
final liveroom = Liveroom(host: 'localhost', port: 3300);
```
