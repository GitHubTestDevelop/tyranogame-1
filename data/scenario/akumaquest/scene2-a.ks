;########################  共通

*start

[cm  ]
[clearfix]
[start_keyconfig]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

; ロールボタン配置

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="40" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="140" y="690"]

;セーブボタン
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="240" y="690"]

;ロードボタン
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="340" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="440" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="540" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="640" y="690"]

;フルスクリーン切替ボタン
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x="740" y="690"]

;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="840" y="690"]

;メニュー呼び出しボタン（※ロールボタンを使うなら不要）
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="940" y="690"]

;メッセージウィンドウ非表示ボタン
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x="1040" y="690"]

;タイトルに戻るボタン
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="1140" y="690"]

;;ロールボタン追加終わり


;########################  共通ここまで
;########################  キャラと背景

[bg storage="whiteroom.png" time="100"]

;このゲームで登場するキャラクターを宣言
;melissa
[chara_new  name="melissa" storage="chara/sample/majo_1.png" jname="メリッサ"  ]
;キャラクターの表情登録
[chara_face name="melissa" face="angry" storage="chara/sample/majo_1.png"]
[chara_face name="melissa" face="doki" storage="chara/sample/majo_1.png"]
[chara_face name="melissa" face="happy" storage="chara/sample/majo_1.png"]
[chara_face name="melissa" face="sad" storage="chara/sample/majo_1.png"]

;yamato
[chara_new  name="yamato"  storage="chara/sample/majo_1.png" jname="やまと" ]

;########################  キャラと背景ここまで
meriisa

;キャラクター登場
[chara_show  name="melissa" top=-10]

#セージ
さて、やることは多いが、まず魔王はどこにいるんだ？[p]

#メリッサ
こちらの地図をご覧ください。[p]

[bg storage="map.png" time=500]

#メリッサ
ここが魔王の居城、黒の城です。[p]

深い森と断崖に囲まれ、正面からは攻められません。[p]

#セージ
……時間はもう、残り少ないんだろう。[p]

#メリッサ
はい。魔王の軍勢は刻一刻と世界の多くを蹂躙しています。[p]

#メリッサ
この国も、もう限界に近いですが……[p]
焦ってしまっては魔王を倒せません。まずは情報を集めに反乱軍に合流しましょう。[p]

#セージ
反乱軍。まだ戦ってるやつらがいるのか。[p]

#メリッサ
はい。生き残った人々の中に、まだ戦う意志を捨てていない者たちがいるようです。[p]

#セージ
だが……どうやって見つける？  [p]

#メリッサ
ここからだと、歩いて二日くらいの場所に廃墟となった町があります。[p]
その聖堂の地下に、レジスタンスの隠れ里があると聞いたことがあります。[p]
そこへ向かいましょう。必ず手がかりが見つかるはずです。[p]

#セージ
わかった。……そこに賭けるしかないな。[p]
