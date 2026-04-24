;########################  共通

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="whiteroom.png" time="100"]

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
[chara_new  name="melissa" storage="chara/sample/majo_1.png" jname="メリッサ"]
;キャラクターの表情登録
[chara_face name="melissa" face="angry" storage="chara/sample/majo_1.png"]
[chara_face name="melissa" face="doki" storage="chara/sample/majo_1.png"]
[chara_face name="melissa" face="happy" storage="chara/sample/majo_1.png"]
[chara_face name="melissa" face="sad" storage="chara/sample/majo_1.png"]

;yamato
[chara_new  name="yamato"  storage="chara/sample/majo_1.png" jname="やまと" ]

;########################  登場キャラここまで


#
ここはどこだ？[p]

誰もいない[p]
……[p]

#?
目が覚めましたか。[p]

#
誰だ？[p]

;キャラクター登場
[chara_show  name="melissa" top=-10]

#メリッサ
魔女のメリッサです。[p]

わたしのことを覚えていませんか？[p]

#
……というか、そもそも俺は誰なんだ？[p]

#メリッサ
やはり記憶までは治りませんでしたか……。[p]

あなたは、悪魔討伐を行っている勇者のセージです。[p]

#セージ
俺が……勇者？[p]
悪いが何も思い出せないし、本当にそうなのか？[p]

#メリッサ
はい。あなたはとても強い勇者でした。[p]
ですが悪魔の力は強く、わたしたちは敗北し、……あなたは命が尽きました。[p]

#セージ
……そんな馬鹿な。[p]
いま、俺は生きているだろう。[p]

#メリッサ
一度きりの奇跡の秘術を使いましたから。[p]

#メリッサ
今がどのような状況か、見たほうが早いですね。[p]

ついてきてください。[p]

#セージ
……ああ。[p]

;場面移動
[bg  time="3000"  method="crossfade" storage="mati1.png"  ]

#
白い部屋を出ると、瓦礫と灰の匂いが俺の鼻を突いた。[p]

メリッサは無言のまま、崩れかけた街道を進んでいく。[p]

俺はその背中を追うしかなかった。[p]

#
街は、静かすぎるほど静かだった。[p]

倒れた石像、崩れた塔。[p]
かつての栄華を思わせる建物は、今や墓標のように影を落としている。[p]
空っぽであるはずの胸が痛む。[p]

#
道端に転がる馬車の残骸。[p]
黒焦げの車輪と、散乱した家の破片。[p]

#
遠くで、建物が軋む音がした。[p]
それ以外に音はない。[p]
生き物の気配すら感じられなかった。[p]

#
石畳に黒い痕が残る。[p]
剣戟と火に焼かれた痕跡。[p]
その先には、灰に埋もれた骨がうっすらと見えていた。[p]

#メリッサ
……この街には、もう生き残りはいません。[p]
魔王の軍勢が現れた時、すべてが終わりました。[p]

#
立ち並ぶ家々は、まるで世界の終わりを告げるように崩れ落ちている。[p]
窓枠には血の跡がこびりつき、扉は引き裂かれたままだ。[p]

#
俺たちは、黙って歩き続けるしかなかった。[p]
足音だけが、石畳に小さく響く。[p]

#
メリッサが時折立ち止まり、かつてあったものを指さす。[p]

#メリッサ
ここは学び舎でした。[p]

#
だが、それらはすでに形を留めてはいない。[p]

#
灰と死だけが、この街を満たしている。[p]
俺は息をのむしかなかった。[p]

#メリッサ
……あなたの記憶には、何も残っていないのですね。[p]

けれど、この光景は魔王がもたらしたものです。[p]

それは覚えておいてください。[p]

#
俺は頷くしかなかった。[p]
胸の奥で、言葉にならない痛みだけが灯っていた。[p]

;場面移動
[bg  time="3000"  method="crossfade" storage="whiteroom.png"  ]


#メリッサ
先ほど見た光景は、世界中で広がっています。[p]

この国は、かつて聖なる光に満ちていました。[p]

しかしその光は衰え、漆黒の悪魔が現れ、あのようなことになりました。[p]

#セージ
どれだけ強いんだ。そいつは。[p]

#メリッサ
一つの国だけではなく、大陸すべての国々が協力し、……そして敗れました。[p]

#
返す言葉がなかった。[p]

#メリッサ
魔王の侵攻でわたしたちは、三つの選択を迫られています。[p]

抗うか、従うか、すべてを捨てるか――。[p]

#セージ
魔王と戦うんじゃないのか？[p]

#メリッサ
勝つことは困難な道です。[p]
魔王は、かつて神々に封印されたほどの力を持つ存在。[p]
わたしたち人間では、到底太刀打ちできないと言われています。[p]
けれど……[p]

#セージ
けれど？[p]

#メリッサ
魔王から打診がありました。[p]

#セージ
魔王から？[p]

#メリッサ
ええ、あなたが従うなら、『人間の命』は保証すると。[p]

#セージ
……そんなことを言ったって、信じられるのか？[p]
あんなことをしたやつを。[p]

#メリッサ
悪魔の契約は絶対ですから。ですが言外に、なにかあるとは思います。[p]

#
俺は何も言えなかった。[p]

#セージ
そもそも何故、俺に？[p]

#メリッサ
あなただけが、悪魔に一撃を与えることができたから、だと思います。[p]
ですが、正面から戦って、勝ち目はありませんでした。[p]

#セージ
……[p]

#メリッサ
さあ、これから、どうしましょうか。[p]

[glink color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"   text="魔王と戦う" target="*choice1"]
[glink color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"   text="魔王に従う" target="*choice2"]
[glink color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="350"   text="戦いを放棄する" target="*choice3"]
[s  ]

*choice1
[eval exp="f.choice=1"]
# 選択肢1の処理
#
魔王と戦う。[p]

#メリッサ
わかりました。……では、わたしも覚悟を決めて、あなたについていきます。[p]
@jump target="*next"

*choice2
[eval exp="f.choice=2"]
# 選択肢2の処理
#
魔王に従う。[p]

#メリッサ
わかりました。それもよろしいかと。[p]
@jump target="*next"

*choice3
[eval exp="f.choice=3"]
# 選択肢3の処理
#
戦いをあきらめる。[p]

#メリッサ
わかりました。それがよろしいかと。[p]
@jump target="*next"

*next
# 共通のセリフ
#メリッサ
そうと決まれば、急いで動きましょう。[p]

[chara_hide name="melissa"]

; ここで選択した内容によって分岐
[if exp="f.choice==1"]
@jump storage="scene2-a.ks"

[elsif exp="f.choice==2"]
@jump storage="scene2-b.ks"

[else]
@jump storage="scene2-c.ks"
[endif]


