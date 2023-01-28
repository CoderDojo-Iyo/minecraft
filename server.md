## Javaサーバー
[Minecraft Server： Java Edition](https://www.minecraft.net/ja-jp/download/server)

ダウンロードして新規フォルダに保存。
ファイル名にバージョン名を入れておくなど。

[サーバーのセットアップ - Minecraft Wiki](https://minecraft.fandom.com/ja/wiki/%E3%83%81%E3%83%A5%E3%83%BC%E3%83%88%E3%83%AA%E3%82%A2%E3%83%AB/%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E3%81%AE%E3%82%BB%E3%83%83%E3%83%88%E3%82%A2%E3%83%83%E3%83%97)


## batファイルの編集
minecraft_server.bat
```
java -Xmx1024M -Xms1024M -jar minecraft_server.1.19.3.jar
```

初回の実行時に `eula.txt` を含むファイルやフォルダが自動的に生成される。

## eulaを編集
```
eula=true
```

`false` を `true` に変えて保存。

## ローカルIPアドレスの確認
コマンドプロンプトを起動して
```
ipconfig
```
IPv4アドレスを確認する。

## ポートの解放
`開放くん` や `UPnPCJ` を使う。

WiFiルータのポート変換を追加。

### UPnPCJの場合
- WAN_PORT: 25565
- PROT: TCP
- LAN IP(固定): (ipconfigにて確認)

`Port開放` をクリックして開放されることを確認。

### WiFiルータ
- TCP/UDPポート: 25565
- LAN側IPアドレス: (ipconfigにて確認)

### 設定例
![Screenshot 2023-01-25 at 2 21 29 PM](https://user-images.githubusercontent.com/948237/214731631-525b7808-fe82-4fd3-afc9-e38ae3ecd6e5.png)

### タイムアウトしました
`接続を維持できません。タイムアウトしました。` となる場合。

Microsoft Defender ファイアウォールを `オフ` にしてみる。

※外部からの接続をVPN経由で試した際に、VPNネットワークが遅かった可能性あり。

## 参考記事
- [Minecraft ポート開放 パソコン版マルチプレイサーバー設置方法](https://www.akakagemaru.info/port/soft_minecraft.html)
- [外出先から自宅のPCを操作したい！（リモートデスクトップの設定）](https://www.blue-star.jp/i-want-to-control-my-home-pc-from-outside-with-remote-desktop/)


---
# Worldの設定
## Server properties
[server.properties - Minecraft Wiki](https://minecraft.fandom.com/ja/wiki/Server.properties)

