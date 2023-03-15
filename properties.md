# server.properties

## Worldの設定

[server.properties - Minecraft Wiki](https://minecraft.fandom.com/ja/wiki/Server.properties)

```
gamemode=creative
spawn-monsters=false
```

## opコマンドについて
サーバーの設定がデフォルトで
```
op-permission-level=4
```
になっており、サーバーのコンソールから
```
/op (user account)
```
として管理者権限を付与する。（ops.jsonに保存される）

## white listによる運用
[white list - Minecraft Wiki](https://minecraft.fandom.com/ja/wiki/%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89/whitelist)

プレイヤーのuuid確認API
```
https://api.mojang.com/users/profiles/minecraft/(プレイヤー名)
```

## white list(whitelist.json) へのユーザ追加
```
whitelist add [ユーザ名]
whitelist reload
```
