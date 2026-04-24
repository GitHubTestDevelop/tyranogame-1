@echo off
setlocal

set "LOCK_FILE=%~dp0tyrano_server.lock"

:: --- 多重起動チェック ---
if exist "%LOCK_FILE%" (
    echo 既にローカルサーバが起動中です。
    pause
    exit /b
)

:: --- Yes/Noポップアップ (PowerShell使用) ---
for /f %%A in ('powershell -Command "[System.Windows.Forms.MessageBox]::Show('ティラノスクリプトのローカルサーバを起動しますか？','確認','YesNo','Question')"') do set "CHOICE=%%A"

if /i "%CHOICE%" neq "Yes" (
    echo キャンセルされました。
    exit /b
)

:: --- ロックファイル作成 ---
echo LOCKED > "%LOCK_FILE%"

:: --- フォルダ移動 ---
cd /d C:\Users\tasiy\tyranoscript_v602b\tyranoscript_v602b

:: --- ローカルサーバ起動 ---
start "" cmd /k "python -m http.server 8000"

:: --- ブラウザを自動起動 ---
start "" "http://localhost:8000"

:: --- ロック解除しない（手動で閉じるまでサーバが動き続ける想定） ---
echo ローカルサーバが起動しました。
echo 終了したらロックファイルを削除してください：%LOCK_FILE%
pause
