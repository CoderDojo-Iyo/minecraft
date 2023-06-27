# minecraft
別ファイルの目次

- [マイクラサーバーの立て方](ServerSetup.md)
- [VPN経由でマルチサーバー](ServerVPN.md)
- [Minecraft教育版](MinecraftEducation.md)
- [サーバー側の設定 - server.properties](properties.md)
- [ワールドについて](world.md)
- [ComputerCraft](ComputerCraft.md)
- [CurseForgeアプリ](CurseForgeApp.md)


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

## turtleの燃料補給 - CC:Tweaked(Lua)
[【マイクラ】Computer Craft Mod 使い方講座①「Refuel」を使ってタートルの燃料を補充しよう - PROCLASS blog](https://proclass.jp/blog/?p=8017)

## Luaのプログラミング - Basic Lua | Feed The Beaset Wiki
[Basic Lua | Feed The Beaset Wiki](https://feed-the-beast.fandom.com/wiki/Basic_Lua)

## 常に昼間にしたい(Java)
時間を停止させるコマンド
```
/time set day
/gamerule doDaylightCycle false
```
時間を動かすコマンド
```
/gamerule doDaylightCycle true
```
## 常に昼間にしたい(教育版 - classroom)
[Classroom Settings](https://educommunity.minecraft.net/hc/en-us/articles/360061369132-Classroom-Settings)
- Always Day
- Perfect Weather
