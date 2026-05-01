; --- staffroll.ks ---

*start_roll
[cm]
[clearfix]
[free_filter]

; 1. システムUIを隠す
[glyph fix=true]
[hidemenubutton]
[iscript]
$(".menu_render, .button_menu, .role_button").hide();
[endscript]

; 2. メッセージレイヤーの設定
; 板（レイヤー）自体は動かさないので、画面全体を覆うサイズにしておきます
[layopt layer=message0 visible=false]
[position layer=message0 width=1280 height=720 top=0 left=0 opacity=0 page=fore]
[layopt layer=message0 visible=true]

; 3. テキストの配置
; 全ての ptext に name="scroll_text" を付けます
[font color="white" size=30 face="装甲明朝,serif"]

[ptext name="scroll_text" layer=message0 text="企画・シナリオ" x=0 y=800 width=1280 align=center edge="0x000000"]
[ptext name="scroll_text" layer=message0 text="氷餅" x=0 y=860 width=1280 align=center]

[ptext name="scroll_text" layer=message0 text="キャラクターデザイン" x=0 y=1060 width=1280 align=center edge="0x000000"]
[ptext name="scroll_text" layer=message0 text="PixAI" x=0 y=1120 width=1280 align=center]

[ptext name="scroll_text" layer=message0 text="背景美術" x=0 y=1320 width=1280 align=center edge="0x000000"]
[ptext name="scroll_text" layer=message0 text="PixAI" x=0 y=1380 width=1280 align=center]

[ptext name="scroll_text" layer=message0 text="BGM" x=0 y=1580 width=1280 align=center edge="0x000000"]
[ptext name="scroll_text" layer=message0 text="甘茶の音楽工房" x=0 y=1640 width=1280 align=center]

[ptext name="scroll_text" layer=message0 text="指先の勇気" x=0 y=1950 width=1280 align=center size=55 edge="0x000000"]
[ptext name="scroll_text" layer=message0 text="THANK YOU FOR PLAYING" x=0 y=2150 width=1280 align=center size=35]

; 4. アニメーション（【重要】layerではなく name="scroll_text" を指定）
; これで「背景」や「レイヤーそのもの」は動かず、文字だけが独立して昇ります
[anim name="scroll_text" top="-=1800" time=30000 opacity=255]
[wa]

; 5. （クリック待ち）
[glyph fix=false]
#
[l]
[cm]

; --- 6. タイトルへ戻る処理 ---

; 一旦音を消す
[stopbgm]

; 画面を暗くして切り替えの準備
;[mask time=800]

; メッセージレイヤーと文字をきれいに掃除
[freeimage layer=message0]
[cm]
[clearfix]

; 隠していたボタン類を復活させる
[iscript]
$(".menu_render, .button_menu, .role_button").show();
[endscript]
[showmenubutton]

; タイトル画面へジャンプ
; ※ jumpの前に [mask_off] は書かないのが一般的です（タイトル側の冒頭で消すため）
[freeimage layer=message0]
[stopbgm]
[jump storage="title.ks"]

