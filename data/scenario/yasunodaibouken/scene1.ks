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

[chara_new  name="aniki" face="nomal" storage="chara/yasunodaibouken/aniki-default.png" jname="アニキ"]
[chara_new  name="rock" face="nomal" storage="chara/yasunodaibouken/rock-default.png" jname="バーのマスター"]
[chara_new  name="yakuza-kanbu" face="nomal" storage="chara/yasunodaibouken/yakuza-kanbu.png" jname="ヤクザ幹部"]
[chara_new  name="yakuza-mob" face="nomal" storage="chara/yasunodaibouken/yakuza-mob.png" jname="ヤクザ"]
[chara_new  name="gakusei2" face="nomal" storage="chara/yasunodaibouken/gakusei2.png" jname="高校生"]
[chara_new  name="jogakusei" face="nomal" storage="chara/yasunodaibouken/jogakusei.png" jname="女子高生"]
[chara_new  name="monstar1" face="nomal" storage="chara/yasunodaibouken/monstar1.png" jname="怪物"]
[chara_new  name="gigi" face="nomal" storage="chara/yasunodaibouken/gigi.png" jname="ギギ"]
[chara_new  name="gijinkaya" face="nomal" storage="chara/yasunodaibouken/gijinkaya.png" jname="擬人化屋"]


;########################  登場キャラここまで

[bg  time="3000"  method="crossfade" storage="yasu/jimusho.png"  ]

; ========================================
; シーン：ヤス、ヤクザの事務所に乗り込む
; ========================================

#  
とあるヤクザの事務所。[p]
空気は重く、煙草の煙が薄く漂っていた。[p]
その一角に、明らかに場違いな数人の高校生たちが、怯えた表情で並ばされている。[p]
俺はそんな空間に無遠慮に足を踏み入れ、明るく声をかけることにした。[p]

#ヤス
「ちわーっす」[p]

;[se storage=footstep_tatami.ogg]

#
俺の声に、肩幅の広い強面の男が振り向いて立ち上がった。[p]

[chara_show name="yakuza-mob" top=-10]

#ヤクザ
「なんだテメエ、どこの組のもんだ！」[p]

#ヤス
「俺は通りすがりもんっす。別にヤクザもんじゃねえっすよ」[p]

#
俺はヤクザじゃない。マフィアだ。[p]
ここに来たのは、ボスであるアニキの命令じゃない。[p]
たまに行く洋食屋の娘が変なバイトやらされてるっていうんで、念のため様子を見に来ただけだ。[p]
いろいろと面倒になりそうだから、ばれたかねえ。[p]

[chara_show name="yakuza-kanbu" top=-10]

#ヤクザ幹部
「……通りすがり？　おいおい、ふざけんなよ」[p]

#ヤクザ幹部
「てめぇ、その白スーツ。港のビアンカファミリーの『狂犬のヤス』だろう」[p]

#  
顔が割れてるか。しょうがねえ。[p]

#ヤクザ
「他の国のマフィアなんざにしっぽ降りやがる子犬野郎が、ここに何の用だ」[p]

#ヤス
「たいした用じゃねえんすけど」[p]

#ヤス
「そこにいるガキども。どうするつもりなんで？」[p]

#
俺の言葉にヤクザは鼻で笑った。[p]

#ヤクザ
「こいつらはバイトだよ。これから遠くのほうに出荷、……出張の予定だ」[p]

#
一瞬、場が静まり返る。[p]


#ヤス
「まあまあ、ガキを相手におとなげねえことするもんじゃねえっすよ」[p]

#ヤクザ
「てめえにゃ関係ねえだろ。こいつらにもこいつらの仕事ってやつがあるんだよ」[p]

#  
高校生の一人が俺にすがるような視線を向けてきた。[p]

[chara_show name="jogakusei" top=-10]

#高校生
「た、助けてください……！」[p]

#
放っておいたら、特に海外だとろくなことにならないだろう。[p]

[chara_hide name="jogakusei"]

[chara_show name="yakuza-mob" top=-10]

#ヤクザ
「うるせえぞ、黙ってろ」[p]

#
ヤクザがガキに殴りかかろうとしていたので、思わず俺はヤクザの振り上げた腕を止めた。[p]
俺は決して正義の味方でも何でもないけど、売られるっていうのは辛いもんだってことくらいは知っている。[p]

#ヤス
「おぅ、そこのガキどもー。俺が退職代行手伝ってやろうか」[p]

#高校生
「お、お願いします！」[p]

#ヤス
「つうわけで、やめさせてやれねえっすかね」[p]

#ヤクザ
「ああっ！？　てめえ、うちの商品に手ぇ出してんじゃねえよ」[p]

#ヤス
「お行儀のいいことをいいたかねえんすけど、ガキを売るのはどうなんすかね」[p]

#ヤクザ
「てめぇ、こっちのシマで勝手なことしてタダで済むと思ってんのか？」[p]

#
もちろんタダではすまないだろう。[p]
ファミリーに迷惑はかけたくないが、ここで引き下がりたくもない。[p]
俺は黙ってヤクザをにらむ。[p]

[chara_hide name="yakuza-mob"]


#ヤクザ幹部
「……まあ待てよ。俺たちもお前らのファミリーと揉もめてえわけじゃねえ。ひとつ、お前らと取引をしようじゃねえか」[p]


#ヤス
「取引？」[p]

#ヤクザ幹部
「俺たちは安全に商品を運ぶのに港を使いたい。港の使用料を払おうってんだ、悪い話じゃないだろう」[p]

#ヤス
「俺たちのファミリーは、人の売り買いはしねえっすよ」[p]

#ヤクザ幹部
「この商売は儲かるんだよ。てめえの想像以上にな」[p]

#ヤクザ幹部
「てめえのボスに話を通してきな。一緒に稼ごうじゃねえか」[p]

#
しかし、どうしたもんか。俺の頭は悪いんだよな。[p]
一旦、うちのファミリーのボスであるアニキと連絡とったほうがいいだろうけど、そんなことをしている間にガキどもは売られちまう気がする。[p]
アニキはこんな時どうしろと言ったかな。[p]
一瞬だけ目をつぶって、アニキの言葉を思い出すことにした。[p]

[chara_hide name="yakuza-kanbu"]


;場面移動
[bg  time="3000"  method="crossfade" storage="yasu/black.png"  ]

#
[chara_show  name="aniki" top=-10]

#アニキ
「おう、ヤス。お前が自分で判断するときにはな、……」[p]

#アニキ
「……、……」[p]
「……、……」[p]

#
アニキは何か大事なことをいろいろ言っていた気がするけど、焦っていると思い出せないもんだ。[p]

#アニキ
「……お前、あんまりわかってねえな。だったら一つだけ覚えておけ」[p]

#ヤス
「へい、なんでしょう」[p]

#アニキ
「『殺ってから、考えろ』だ」[p]

#
アニキの言葉はわかりやすい。[p]
世の中の大概の奴らは、俺より頭が回る。[p]
ということは、他人の話をまとも聞いていたら簡単に丸め込まれちまう。[p]
だったらシンプルがいいよな。[p]
迷ったら殴る。[p]
そこそこの悪党だったら、そこまで手加減はいらない。[p]
俺は心の中にある、鎖を一つ外すことにした。[p]

[chara_hide  name="aniki"]

[bg  time="3000"  method="crossfade" storage="yasu/jimusho.png"  ]


[chara_hide name="yakuza-kanbu"]


;[se storage=knife_draw.ogg]

[chara_show name="yakuza-kanbu" top=-10]
#
目を開けたら、俺はヤクザを一人殴り飛ばしていた。[p]

#ヤクザ幹部
「てめえ、何しやがる」[p]

#ヤス
「なんかムカついたから殴った」[p]

#ヤクザ幹部
「てめえ、この落とし前、どうつけるつもりだ」[p]

#ヤス
「『やってから考える』」[p]

#ヤス
「とりあえず、お前ら全員ぶちのめして、ガキども貰っていくっす」[p]

#ヤクザ幹部
「どんな道理だ！　狂犬野郎が！」[p]

#ヤス
「俺もあんたらも、まともな道理で生きてないっすよね」[p]

#
こういう連中には、時間を与えない。[p]
後悔は後回しにしよう。[p]

#ヤクザ幹部
「囲め、ドス持ってこい。こいつを逃がすな！」[p]

#
部屋の中にいるヤクザは7人。[p]
全員がこちらをにらみつけている。[p]

#
二人の男が殴りかかってきたが、動きが遅い。[p]
的が向こうから寄ってきただけだ。[p]
軽く握った左右の拳で、一人ずつ相手の鼻先を潰すと二人の男は顔を抱えてしゃがみこんだ。[p]
そのうずくまっている男を両手で持ち上げて、振り回す。[p]

#ヤクザ
「あ、ああぁぁっ！」[p]

#
ヤクザの叫び声を無視して、驚いて動けないでいる何人かのヤクザにもぶつけ、ドスを持っている奴の方向に投げ捨てる。[p]
つぶれたカエルのような声を上げ、立ち上がることができなくなったようだ。[p]

#ヤクザ幹部
「チャカ持ってこい、ぶっ殺せ！　檻からアレを出せ！」[p]

#
ヤクザの幹部は焦ったような声色で命じる。[p]

#
机から拳銃を取り出そうとしている奴をそのまま蹴り飛ばす。[p]


#ヤクザ幹部
「おう、待て狂犬。こいつら殺すぞ！」[p]

#
幹部のヤクザは、ガキどもに銃を向けていた。[p]
……シンプルに。[p]
撃たれる前に殴る。[p]
仮に殺されたら仇を討つ。だから相手の話を聞く必要はない。[p]
俺は大きく一歩踏み出すと、銃を向けているヤクザを殴り飛ばす。[p]

[chara_hide name="yakuza-kanbu"]

立っているのは俺だけになったが、ふと背後から気配がする。[p]
顔だけそちらに向けると、不思議な姿の生き物がそこに立っていた。[p]

[chara_show name="monstar1" top=-10]
#怪物
「ギギ」[p]

#
不思議な生き物は、こちらをじっと見ている。[p]
多分、強いな。[p]

#ヤクザ
「おい化け物、この狂犬野郎をぶっ殺せ！」[p]

#化け物
「ギ」[p]

#
怪物はゆっくりとこちらに歩み寄ってくる。[p]
べたり、と地面を踏みぬく音が室内に大きく響く。[p]
妖怪の知り合いは何人かいるけど、どうも日本の妖怪に見えない。[p]

#ヤス
「あんたは誰っすかね？」[p]

#化け物
「ギギ」[p]

#
しかし、こいつの体はよく見ると傷だらけだ。[p]
このヤクザの連中に、こき使われてるのかもしれねえな。[p]
それに2メートルくらいあるけど、顔つきを見ると少し幼い気がする。[p]

#ヤス
「ギギさんか、あんたがどこの国の妖怪か知らねえっすけど、俺はガキを殴るつもりはねえっす」[p]

#ギギ
「ギー！」[p]

#
ギギは唐突に飛び上がると、俺に鉤爪を向けてきた。[p]
ギリギリで身をかわすと、怪物の爪が俺の横を掠め、背後の壁を引き裂いた。[p]

#ヤス
「速えな……どうすっかな」[p]
#
『やってから考えるべき』だが、子供は殴れない。[p]
こんな時はどうすればいいんだ、アニキ。[p]
心の中で助けを呼んでも、目の前のギギは強い。目をつぶる瞬間もできない。[p]
俺は姿勢を低く保ったまま、怪物の懐に潜り込む。[p]
とり押される―そう思った瞬間、怪物の尻尾のようなものが俺をはじき飛ばした。[p]
視界がぐらつき、血の味が口に広がる。[p]


#ヤクザ
「おう、手ぇ止めんな！。そのまま狂犬の野郎を殺せ！」[p]

#
手にはリモコンのようなものを持っている。[p]
あれは何だろう。[p]
ギギが首を押させて苦しんでいるように見える。[p]
やっぱり無理やり従わされていたのか。[p]
俺は一足でヤクザにとびかかり、側頭部を殴り昏倒させる。[p]
これで、ギギに指示する奴はいなくなった[p]

#ギギ
「ギー！」[p]

#
それでもギギはこっちに向かってくる。[p]
もう、こいつに指示をする奴はいないってのに。[p]
でも、気持ちはわかる。[p]
首輪っていうのは、一回つけられたら外すのは大変なんだ。[p]
ギギが拳を固めて、俺の腹に重い一撃を加える。[p]
一瞬頭が真っ白になるくらいの痛みと、俺の体が持ち上がるくらいの衝撃だ。[p]
俺は冷や汗を背中で流しながら、ギギに笑いかけることにした。[p]

#ヤス
「まあ心配すんなって、こんな首輪なんて外してやるっすよ」[p]

#
俺は首輪に手をかける。[p]
引きちぎろうとしたが、固いな。[p]
鍵穴っぽいところがあるけど、どこに鍵があるかわからない。[p]
こんな時は、頭を使おう。[p]
テコの原理だかなんだかで、力の入れやすい角度っていうのがある。[p]
俺は両手を首輪の端にかけ、力を込めた。[p]
金属がきしむ音が響くが、それでも割れねえ。[p]
それとたしか人間の脳は、自分の体を壊さないようにブレーキがかかっていると聞いたことがある。[p]
つまり、本気の人間の力は半端ねえってことだ。[p]
心の中にある、鎖をもう一つ外す。[p]
手の皮が剥けるのも構わず、さらに力を込める。[p]
力入れすぎて俺の血管が切れそうになる。[p]
火花が散り、首輪が真っ二つに裂けた。[p]

#ギギ
「ギギ」[p]
#
ギギは動きを止めて、こちらを見上げた。[p]

#ヤス
「」[p]



