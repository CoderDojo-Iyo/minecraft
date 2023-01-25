## Javaサーバー
ダウンロードして新規フォルダに保存。
ファイル名にバージョン名を入れておく。

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
### UPnPCJの場合
- WAN_PORT: 25565
- PROT: TCP
- LAN IP(固定): (ipconfigにて確認)
`Port開放` をクリックして開放されることを確認。

## 参考記事
- [Minecraft ポート開放 パソコン版マルチプレイサーバー設置方法](https://www.akakagemaru.info/port/soft_minecraft.html)
