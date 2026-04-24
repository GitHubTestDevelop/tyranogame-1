;########################  共通

*start

[cm  ]
[clearfix]
[start_keyconfig]

[bg storage="white.jpg" time="100"]

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
;########################  登場キャラ

;このゲームで登場するキャラクターを宣言
;melissa
[chara_new  name="melissa" storage="chara/akumaquest/melissa_nomal.png" jname="メリッサ"]
;キャラクターの表情登録
[chara_face name="melissa" face="nomal" storage="chara/akumaquest/melissa_nomal.png"]
[chara_face name="melissa" face="angry" storage="chara/akumaquest/melissa_angry.png"]
[chara_face name="melissa" face="odoroki" storage="chara/akumaquest/melissa_odoroki.png"]
[chara_face name="melissa" face="happy" storage="chara/akumaquest/melissa_happy.png"]
[chara_face name="melissa" face="sad" storage="chara/akumaquest/melissa_sad.png"]


;########################  登場キャラここまで


#
薄暗い道を歩いている。  [p]

#
目の前が暗く、足元は不確かだ。  
なぜ俺がここにいるのか思い出せない。 [p] 

#
そもそも、俺は誰だったか。
確か、セージとか人に呼ばれていた気がする。[p] 

#
ただ、なんとなくここが現実ではないような気がしている。[p] 

#
……ここは夢か、地獄か、天国か。  [p]

#
目の前は暗闇が続く。 [p]

#
長く歩くと、目の前に扉があった。[p]

#
扉の前に立ったそのとき――  [p]

#？
振り向かないで。急いで、先に進んで。[p]

#
背後から、女の声がする。
焦っているような声に聞こえる。[p]

#
さて、どうする？

[glink color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"   text="扉を開ける。" target="*choice1-1-1"]
[glink color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"   text="振り向く。" target="*choice1-1-2"]
[glink color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="350"   text="誰かいるのかと声をかける。" target="*choice1-1-3"]
[s  ]

*choice1-1-1
[eval exp="f.choice=1-1-1"]
#
扉を開ける。[p]


*choice1-1-2
[eval exp="f.choice=1-1-2"]
#
振り向く。[p]

*choice1-1-3
[eval exp="f.choice=1-1-2"]
#セージ
誰かいるのか？[p]

;キャラクター登場
[chara_show  name="melissa" top=-10]

#
女は何も言わずに静かにこちらを見ている。[p]

#
何かを言わないとと思ったが、なぜか言葉が詰まってしまった。[p]

#
一つだけ、[p]
