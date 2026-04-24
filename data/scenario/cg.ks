; CGモード画面の初期化
@layopt layer=message0 visible=false
@clearfix
[cm]
[bg storage="../../tyrano/images/system/bg_base.png" time=100]

; 戻るボタン
[button graphic="config/menu_button_close.png" target="*back_title" x=1150 y=40]

; --- CG表示エリア 1枚目：yubisaki ---
[if exp="sf.cg.yubisaki == true"]
    [button graphic="../bgimage/yubisaki/yubisaki.png" x=100 y=150 width=200 height=150 target="*view_cg" exp="tf.view_img='yubisaki.png'"]
[else]
    [button graphic="../../tyrano/images/system/noimage.png" x=100 y=150 width=200 height=150 target="*no_cg"]
[endif]

; --- CG表示エリア 2枚目：yubi-ending ---
; x座標を 350 にして横に並べています
[if exp="sf.cg.yubi_end == true"]
    [button graphic="../bgimage/yubisaki/yubi-ending.png" x=350 y=150 width=200 height=150 target="*view_cg" exp="tf.view_img='yubisaki/yubi-ending.png'"]
[else]
    [button graphic="../../tyrano/images/system/noimage.png" x=350 y=150 width=200 height=150 target="*no_cg"]
[endif]

[s]

; --- 拡大表示処理 ---
*view_cg
[cm]
[bg storage="&tf.view_img" time=300]
[l]
; クリックで一覧に戻る
[jump target="*back_cg_list"]

*no_cg
[dialog type="alert" text="まだ未開放のCGです"]
[jump target="*back_cg_list"]

*back_cg_list
[cm]
@jump storage="cg.ks"

*back_title
[cm]
@jump storage="title.ks"