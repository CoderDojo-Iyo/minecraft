## Javaサーバー
[Minecraft Server： Java Edition](https://www.minecraft.net/ja-jp/download/server)

ダウンロードして新規フォルダに保存。
ファイル名にバージョン名を入れておくなど。

[サーバーのセットアップ - Minecraft Wiki](https://minecraft.fandom.com/ja/wiki/%E3%83%81%E3%83%A5%E3%83%BC%E3%83%88%E3%83%AA%E3%82%A2%E3%83%AB/%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E3%81%AE%E3%82%BB%E3%83%83%E3%83%88%E3%82%A2%E3%83%83%E3%83%97)


## batファイルの編集
minecraft_server.bat
```
java -Xmx2048M -Xms2048M -jar minecraft_server.1.19.4.jar
```
### 2023.03.30
サーバーを起動してクライアントから接続すると、
```
[WARN]: Can’t Keep Up! Is the Server Overloaded?
```
のようなログが出力されたので下記のように修正。
```
java -Xmx3G -Xms1G -jar minecraft_server.1.19.4.jar
```

初回の実行時に `eula.txt` を含むファイルやフォルダが自動的に生成される。

## eulaを編集
```
eula=true
```

`false` を `true` に変えて保存。

## ローカルIPアドレスの確認
### Windowsの場合
コマンドプロンプトを起動して
```
ipconfig
```
IPv4アドレスを確認する。

### MacOSの場合
ターミナルから
```
ifconfig | grep "inet "
```
とするなど。

## ポートの解放
`開放くん` や `UPnPCJ` を使う。

WiFiルータのポート変換を追加。

### UPnPCJの場合
- WAN_PORT: 25565
- PROT: TCP
- LAN IP(固定): (ipconfigで確認)

`Port開放` をクリックして開放されることを確認。

### WiFiルータ
- TCP/UDPポート: 25565
- LAN側IPアドレス: (ipconfigで確認)

### 設定例
![Screenshot 2023-01-25 at 2 21 29 PM](https://user-images.githubusercontent.com/948237/214731631-525b7808-fe82-4fd3-afc9-e38ae3ecd6e5.png)

### タイムアウトしました
`接続を維持できません。タイムアウトしました。` となる場合。

Microsoft Defender ファイアウォールを `オフ` にしてみる。

※外部からの接続をVPN経由で試した際に、VPNネットワークが遅かった可能性あり。

### DDNSの利用
自宅などからインターネットに接続する場合、グローバルIPアドレスが割り当てられる。　

自宅の外から自宅で起動中のマイクラサーバーに接続する場合はこのグローバルIPアドレスをサーバーアドレスとして指定する。　

ただし、自宅のWiFiルータを再起動（インターネットに接続し直し）した場合など、グローバルIPアドレスが変わってしまうことがある。
（グローバルIPアドレスを固定したい場合はVPNなどのサービスが別途必要。）  

ここで、グローバルIPアドレスを固定しなくても、`no-ip`などのDDNSサービスを利用することで自分専用のドメイン名で接続ができるようになる。

### [no-ip](https://www.noip.com/) を利用する場合
- メールアドレス
- パスワードを新規作成
- Hostname（希望の名前を決める。後からでもOK）
- Free Sign Up（登録を実行）
 
![Screenshot 2023-01-30 at 4 17 29 PM](https://user-images.githubusercontent.com/948237/215414710-ebc5da4e-daee-49c3-a6ed-4341825074db.png)

アカウントを登録したら `Sign In` する。

- `Dynamic DNS` メニューを開く
- `Dynamic Update Client` をダウンロードしてインストール
- `Dynamic Update Client` からnoipのアカウントで　`Sign In`
- 自分で設定したホスト名にチェックを入れて保存する

![noip-duc2023-01-30](https://user-images.githubusercontent.com/948237/215419879-353e54a9-1243-47fd-a859-90f44f27fbd2.png)

### DUC Clientの設定
File -> Preferences
- Windowsにログオンしたら `DUC Client` を自動的に起動する。
- Windowsを起動したら　`DUC Service` を自動的に起動する。

![duc-preferences-2023-02-01](https://user-images.githubusercontent.com/948237/215964550-7b6e9dea-edfa-4db4-a397-42697a080c9d.png)

### ddnsのホスト名有効期限
no-ipのサービス(free plan)で取得したホスト名は有効期限が30日なので、同じホスト名を継続して(無料で
)利用する場合は更新手続きが必要。有料プランにUpgradeする方法もあり。

### no-ip有料プラン
[no-ip Dynamic DNS](https://www.noip.com/remote-access)
- 1 hostname - $1.99/mo

## 電源の設定
電源に接続中はスリープにしない。

![windows-power-settings-2023-02-01](https://user-images.githubusercontent.com/948237/215963458-1c3f0c40-6d94-4bb4-80c2-04a75684e440.png)


## 参考記事
- [Minecraft ポート開放 パソコン版マルチプレイサーバー設置方法](https://www.akakagemaru.info/port/soft_minecraft.html)
- [外出先から自宅のPCを操作したい！（リモートデスクトップの設定）](https://www.blue-star.jp/i-want-to-control-my-home-pc-from-outside-with-remote-desktop/)
- [no-ip](https://www.noip.com/)
