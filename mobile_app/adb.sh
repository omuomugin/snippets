# 接続端末の一覧
adb devices

# カスタムスキーム起動
adb shell am start \
-a android.intent.action.VIEW \
-d "hoge://hoge.com"

# message送信
## xxxxを入力する
## "" とかつけてはいけないのと日本語はだめ
adb shell input text xxxx

# キーイベントの発火
## Key Eventはこちら https://developer.android.com/reference/android/view/KeyEvent.html
adb shell input keyevent x

## e.g
adb shell input keyevent 3 # HOME
adb shell input keyevent 4 # バックキー

# アプリのインストール (-r は、上書きオプション)
adb install -r xxx.apk

# ログ取得
adb logcat

# アクティビティモニター
## Activity starting: com.hoge.fuga
adb shell am monitor
