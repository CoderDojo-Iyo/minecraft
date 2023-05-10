## スクリーンショットの撮り方 - Java版
[スクリーンショット - minecraft wiki](https://minecraft.fandom.com/ja/wiki/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88)

MacでFnが動作しない場合はキーボードの設定を確認  
<img width="338" alt="スクリーンショット 2023-05-05 午前11 21 18" src="https://user-images.githubusercontent.com/948237/236365912-09bada74-f209-4b56-b44e-43bc5810fab5.png">
### 保存場所
```
（Win)
%appdata%\.minecraft\screenshots
```
エクスプローラで `%appdata%` を開けば見つかると思います。
```
(Mac)
/Users/(ユーザー名)/Library/Application Support/minecraft/mygamedir/screenshots
```
### スクリーンショットの例  
![2023-05-05_11 18 22 copy](https://user-images.githubusercontent.com/948237/236366896-e5cb5671-2664-4f75-9c1a-6f02299e43e1.jpg)

## Worldのシード値について
[シード値 - minecraft wiki](https://minecraft.fandom.com/ja/wiki/%E3%82%B7%E3%83%BC%E3%83%89%E5%80%A4)

[シードマップ](https://www.chunkbase.com/apps/seed-map#7720807163619111538)で確認してみる。

![Screenshot 2023-05-05 at 11 44 34 AM](https://user-images.githubusercontent.com/948237/236367718-1aea9948-d9f1-4082-9a73-9b6b0a097e6c.png)

中心のアイコンが `Spawn Point` 

なので東の方向に海を渡っていくと陸地が広がっている様子。

## ゲームモードの切り替え
```
/gamemode creative [user]
/gamemode adventure [user]
/defaultgamemode
```
`[user]` を省略すると自分のみ
`[user]` を `@a` とすると全員
