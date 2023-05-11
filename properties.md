# server.properties

## Worldの設定

[server.properties - Minecraft Wiki](https://minecraft.fandom.com/ja/wiki/Server.properties)

```
allow-flight=true
enable-command-block=true
force-gamemode=true
gamemode=creative
op-permission-level=2
pvp=false
spawn-monsters=false
white-list=true
```

## opコマンドについて
サーバーの設定がデフォルトで
```
op-permission-level=4
```
になっていて、サーバーのコンソールから
```
op [ユーザ名]
```
として管理者権限を付与すると `ops.json` に保存される。
ひとまず、
```
op-permission-level=2
```
に変更して運用してみる。

ちなみにこの設定で、
```
op [ユーザ名]
```
を実行すると、ユーザーは権限レベル２で追加される。
メンターには権限レベル４を設定。（サーバー側で　 `ops.json` の編集が必要）

## 権限によるコマンドの違いについて
[コマンド - Minecraft Wiki](https://minecraft.fandom.com/ja/wiki/%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89)

## white listによる運用
[white list - Minecraft Wiki](https://minecraft.fandom.com/ja/wiki/%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89/whitelist)

プレイヤーのuuid確認API
```
https://api.mojang.com/users/profiles/minecraft/(プレイヤー名)
```

## white list(whitelist.json) へのユーザ追加
例えば新しいニンジャが
- 当マイクラサーバーに入りたい
- コマンドを使いたい

場合は、管理者(権限レベル4)が
- ニンジャを `whitelist` へ追加
- ニンジャを `op` へ追加

の操作が必要。
```
whitelist add [ユーザ名]
whitelist reload
op [ユーザ名]
```

## force-gamemode
```
デフォルトのゲームモード設定をプレイヤーに強制するかの設定。
true：ゲーム中にゲームモードを変えたとしても再ログインするとサーバー設定のゲームモードになる。
false：ゲームモードを変えてログアウトし直した場合、ログアウト時の設定で再開。
```
