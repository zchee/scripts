# 不可視ファイルの表示
defaults write com.apple.finder AppleShowAllFiles -bool true
# Finderのタイトルバーにフルパス表示
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# Finderのパスバーのルートをユーザールートに変更
defaults write com.apple.finder PathBarRootAtHome -bool yes
# quick lookでテキストを選択可能にする
defaults write com.apple.finder QLEnableTextSelection -bool true
# ダイアログ表示やウィンドウリサイズ速度を高速化
defaults write -g NSWindowResizeTime 0.1
# ダウンロードアプリの警告ダイアログを無効
defaults write com.apple.LaunchServices LSQuarantine -bool false
# クラッシュリポーターを無効
defaults write com.apple.CrashReporter DialogType none
# Dockが表示される速度を変更
defaults write com.apple.dock autohide-delay -float 0.1
# Dockが隠れる速度を変更
defaults write com.apple.dock autohide-time-modifier -float 0.3
# Suckエフェクトを有効
defaults write com.apple.dock mineffect suck
# Mission Controlの速度を変更
defaults write com.apple.dock expose-animation-duration -float 0
# 次のデスクトップに移動する際の待ち時間を変更
defaults write com.apple.dock workspaces-edge-delay -float 0.5
# Launchpadの表示速度を変更
defaults write com.apple.dock springboard-show-duration -int 0
# Launchpadを閉じる速度を変更
defaults write com.apple.dock springboard-hide-duration -int 0
# デスクトップの切り替えのアニメーションを無効
defaults write com.apple.dock workspaces-swoosh-animation-off -bool YES
killall Dock
killall Finder
# Time Machineのローカルキャッシュを削除
sudo tmutil disablelocal && sudo tmutil enablelocal
# Time Machineのローカルキャッシュを無効
sudo tmutil disablelocal
