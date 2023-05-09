# minecraft

## マイクラサーバーの立て方について
- [Minecraft Server](server.md)

## （不定期に）運用中のサーバー
Dojoの開催に合わせて随時起動しています。 
- [server.properties](properties.md)
- [ワールドについて](world.md)

## Modを使う場合
サーバー側にModが導入されていて、クライアント側にModが未導入だと
```
This server has mods that require Forge to be instaled on the client.
Contact your server admin for more details.
```
のようなエラーメッセージが表示されて接続できない。

# Minecraft(Java) + CC:Tweaked
ComputerCraftから派生して `CC:Tweaked`　がメンテナンスされている様子。
- [Forge](https://files.minecraftforge.net/net/minecraftforge/forge/)
- [CC:Tweaked](https://legacy.curseforge.com/minecraft/mc-mods/cc-tweaked)
この構成でlua言語を使ってturtleを動かすことができます。

## 起動構成
新規作成で
```
forge-cctweaked-1.19.3
```
のような名前にしておくとよろしいかと。

## 安定版 - 2023.05.09現在
- forge-1.19.3
- cc-tweaked-1.19.3-forge-1.103.1.jar

## プログラミング
`ワールドの中でフロッピーに保存したプログラム` はマイクラを動かしているPCのファイルシステムから
編集可能。
