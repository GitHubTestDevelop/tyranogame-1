; =========================================
; 回想モード 画面作成
; =========================================

; メッセージウィンドウを消し、画面をクリアにする
@layopt layer=message0 visible=false
@clearfix
[cm]

; 背景の設定（パスは環境に合わせて調整してください）
[bg storage="../../tyrano/images/system/bg_base.png" time=100]

; 画面タイトルなどの画像（必要あれば）
; [image layer=1 left=0 top=0 storage="config/label_remin.png" folder="image"]

; 戻るボタン：タイトル画面へ戻る
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png" target="*back_title" x=1150 y=40]

; -----------------------------------------
; 回想ボタン配置エリア
; -----------------------------------------

; --- 回想1：指先エンディング ---
[if exp="sf.cg.yubi_end == true"]
    ; 【到達済み】クリックするとシナリオの特定ラベルへジャンプ
    ; storage：シナリオファイル名
    ; target ：シナリオ内のラベル名
    ; exp    ：回想中であることを示すフラグを true にする
    [button graphic="../bgimage/yubisaki/yubi-ending.png" x=100 y=150 width=200 height=150 storage="yubisaki/scene1.ks" target="*yubisaki_ending_start" exp="tf.replaying = true"]
[else]
    ; 【未到達】「？」などの画像を表示（クリックしても何も起きない、または警告）
    [button graphic="../../tyrano/images/system/noimage.png" x=100 y=150 width=200 height=150 target="*no_remin"]
[endif]

; --- 回想2：もし追加したい場合（例） ---
; [if exp="sf.cg.scene2 == true"]
;     [button graphic="../bgimage/scene2_thumb.png" x=350 y=150 width=200 height=150 storage="scene2.ks" target="*scene2_start" exp="tf.replaying = true"]
; [else]
;     [button graphic="../../tyrano/images/system/noimage.png" x=350 y=150 width=200 height=150 target="*no_remin"]
; [endif]

[s]

; -----------------------------------------
; ラベル処理
; -----------------------------------------

; 未開放のボタンを押した時
*no_remin
[dialog type="alert" text="まだ未開放のシーンです"]
[jump target="*back_list"]

; 画面をリロード（一覧に戻る）
*back_list
[cm]
@jump storage="reminiscence.ks"

; タイトルに戻る
*back_title
[cm]
@jump storage="title.ks"