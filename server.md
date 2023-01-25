## Javaサーバー
[Minecraft Server： Java　Edition](https://www.minecraft.net/ja-jp/download/server）

ダウンロードして新規フォルダに保存。
ファイル名にバージョン名を入れておくなど。

## batファイルの編集

## eulaを編集
```
eula=true
```

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
![Screenshot 2023-01-25 at 2 21 29 PM](https://user-images.githubusercontent.com/948237/214486665-b1879be3-8595-4f78-b6f4-5377a61bd80d.png)

### タイムアウトしました
`接続を維持できません。タイムアウトしました。` となる場合。

Microsoft Defender ファイアウォールを `オフ` にしてみる。

※外部からの接続をVPN経由で試した際に、VPNネットワークが遅かった可能性あり。

## 参考記事
- [Minecraft ポート開放 パソコン版マルチプレイサーバー設置方法](https://www.akakagemaru.info/port/soft_minecraft.html)
