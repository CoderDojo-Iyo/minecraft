## Minecraft(Java) + CC:Tweaked
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

# turtle API
[turtle.inspect()](https://computercraft.info/wiki/Turtle.inspect)

[floopy-disk-and-turtles](http://www.computercraft.info/forums2/index.php?/topic/1643-floopy-disk-and-turtles/)

## Turtle specific commands
[Turtle-specific_Commands - CraftOS Shell](https://www.computercraft.info/wiki/CraftOS_Shell#Turtle-specific_Commands)

## Home potision
[Turtle Home position. - ComputerCraft forum](https://www.computercraft.info/forums2/index.php?/topic/10426-turtle-home-position/)

## Navigator
[NAVIGATOR - Inertial Navigation for Turtles - ComputerCraft forum](https://www.computercraft.info/forums2/index.php?/topic/29798-navigator-inertial-navigation-for-turtles/)

## Basic Lua - feed the beast wiki
[Basic Lua](https://feed-the-beast.fandom.com/wiki/Basic_Lua)

## pastebin
[putting it all together](https://feed-the-beast.fandom.com/wiki/Basic_Lua#Putting_it_all_together)

[Pastebin.com](https://pastebin.com/)

## turtle.inspect()
[turtle.inspect() is returning {nil, nil} while looking at oak log](https://forums.computercraft.cc/index.php?topic=313.msg1143#msg1143)
```
local success, data = turtle.inspect()
print(textutils.serialise(data))
```
<img src="https://github.com/CoderDojo-Iyo/minecraft/assets/948237/f2ee2c42-abed-48ac-82ec-4dc63227157d" width="360px">

## gps
[gps - cctweaked](https://tweaked.cc/module/gps.html)

## modem
- [Connecting Turtles to a Modem](http://www.computercraft.info/forums2/index.php?/topic/21796-connecting-turtles-to-a-modem/)
- [ComputerCraftの無線通信を使いこなそう(2)　―RednetAPIの解説](https://hevohevo.hatenablog.com/entry/2014/03/13/001612)

受信側の Computer や Turtle の id を確認。
```
> id
This is computer #1
```
受信側のモデムの位置を確認してプログラムを起動しておく。
```
rednet.open("right")

local senderID, message, distance = rednet.receive()
print(message,' from ID',senderID)
```
次に送信側のプログラム。
Wireless Pocket Computerの場合、モデムの位置は　"back"。
送信先（受信するコンピュータ）の id は　#1 なので、
```
rednet.open("back")

rednet.send(1, "hello")
```
これを実行すると、受信側の turtle にメッセージが届く。
- 受信側の　turtle

<img width="320" alt="Screenshot 2024-02-12 at 3 50 15 PM" src="https://github.com/CoderDojo-Iyo/minecraft/assets/948237/cb0d60e2-39b0-419d-a104-f12dc0e634a3">
<img width="320" alt="Screenshot 2024-02-12 at 3 50 05 PM" src="https://github.com/CoderDojo-Iyo/minecraft/assets/948237/e676bafc-b6a1-46af-97a7-e66afe65e8aa">

- 送信側の Wireless Pocket Computer

<img width="320" alt="Screenshot 2024-02-12 at 3 51 15 PM" src="https://github.com/CoderDojo-Iyo/minecraft/assets/948237/889ab143-f91c-4079-85d7-2b5da0ec53b3">
