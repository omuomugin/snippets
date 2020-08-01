# Xcodeで扱うことができるデバイス情報を出力
## Bootedつければ起動してるデバイスリスト見れる
xcrun simctl list | grep 'Booted'

# 起動する
## GUIは起動しない
xcrun simctl boot XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
xcrun simctl shutdown XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX # 落とす

## GUI起動は
open -a "Simulator" --args -CurrentDeviceUDID XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX

# カスタムスキームを開く
## Custom Scheme or Universal Link
## bootedで起動してるものの1つを自動で対象にする
xcrun simctl openurl XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX 'hoge://hoge.com'
xcrun simctl openurl booted 'hoge://hoge.com'

# シミュレータの画面録画
xcrun simctl io booted recordVideo xxx.mov

# シミュレータの画面のスクリーンショット
##  --type : Can be "png", "tiff", "bmp", "gif", "jpeg". Default is png.
xcrun simctl io booted screenshot xxx.png

# ログをtailする
xcrun simctl spawn booted log stream --level=debug

# メッセージを送信する
echo foo | xcrun simctl pbcopy XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX

# シミュレータでコピーしたものをペーストする
xcrun simctl pbpaste XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
