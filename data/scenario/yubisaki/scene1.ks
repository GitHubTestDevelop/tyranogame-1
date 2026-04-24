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


; 背景画像を表示（storageは data/bgimage フォルダからのパス）
[bg storage="yubisaki/background.png" time=1000]

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

;(本文開始)
#
# 
穴を掘りながら考える。死なないためには臆病であるべきだ、と。[p]

# 
暗い森の中、ジープのヘッドライトだけが辺りを照らしている。[p]

[iscript]
// CGモードリセットテスト用
sf.cg = {};
[endscript]

# 
夜だと言うのに蒸し暑く、虫の鳴き声がひどく耳障りだ。[p]

# 同僚
なんでオレがこんなことしなきゃいけないんだよ[p]

# 
その気持ちはよく分かるが、俺は黙々とスコップを使って穴を掘り進める。[p]

# 
掘った土を避けるついでに、視界の隅で車の方を確かめてみる。[p]

# 
監督役の男が煙草を吸いながら、じっと同僚を眺めているようだった。[p]

# 
災難を避けたいなら、見ざる言わざる聞かざるだし、余計なことをしてはいけない。[p]

# 
それを心得ていない者は意外と多いのか、同僚はこれまで何人もいたが、いつのまにかにいなくなってしまった。[p]

# 
俺の仕事は色んな山奥で深く穴を掘ってから、大きい袋をそこに入れて埋めなおす。[p]

# 
単純だが結構な肉体労働だ。袋の中身については、考えたくもない。[p]

# 
流れる汗が目に入るので手の甲でぬぐう。[p]

# 
知人に巻き込まれる形で始めた仕事だが、こんな仕事が嫌だと言っても抜け出すことはできない。[p]

# 
俺の顔も名前も知られているし、この組織の報復は恐ろしい。[p]

# 
だったら死なないために従う他ない。[p]

# 
なににも気づかないふりをして、自分に言い訳をしながら時間が過ぎていくのを待つ。[p]

# 
きっとそれが賢さというものなのだろう。[p]

# 
ふと、電話の音が鳴った。[p]

# 監督
おい、サトウ。今日の袋はこれだ。埋めとけ[p]

# サトウ
はい。分かりました[p]

# 
俺は粛々と指示に従いジープから無造作に袋を担ぐ。[p]

# 
中身は何が入っているか知らないが、重さからして子供かもしれない。[p]

# 
一人で持てる程度の重さだ。[p]

# 
監督は敬語で誰かと連絡している。[p]

# 
これは普段偉そうな監督ですら組織の下っ端だということだろう。[p]

# 
どれだけの規模の組織か末端には測りようもない。[p]

# 
いつものように袋を穴に投げ込む直前、袋の中身が動いた。[p]

# 
背筋がぞっと冷えた。[p]

# 
袋の紐をほんの少しだけほどく。[p]

# 
中には顔中殴られた痕のある子供が入っていた。[p]

# 
知ってしまった。知らないふりはもうできない。[p]

# 
助けを求めているように見える。[p]

# 
だが、助けれるだろうか？[p]

# 
俺は目をつぶる。[p]

# 
そうすると、物理的に子供が見えなくなる。[p]

# 
そう、今までと同じでいいじゃないか。[p]

# 
と思い込もうとしたとき、子供に指先を掴まれた。[p]

; 背景画像を表示（storageは data/bgimage フォルダからのパス）
[bg storage="yubisaki/yubisaki.png" time=1000]

# 
暖かい。[p]

# 
俺は目を開いた。[p]

# サトウ
なあ、ここで死んだ方が楽だぞ[p]

# 
子供はわずかに首を振る。[p]

# サトウ
それでも死にたくない、か？[p]

# 
子供は目を閉じる。[p]

# サトウ
生きたいか？[p]

# 
子供は目を開いて頷いた。[p]

# サトウ
そうか、それなら……、一緒に戦ってくれるか？[p]

# 
子供は指先を握り返した。[p]

; 背景画像を表示（storageは data/bgimage フォルダからのパス）
[bg storage="yubisaki/background.png" time=1000]

; フラグを立てて保存
[eval exp="sf.cg.yubisaki = true"]
[eval exp="TYRANO.kag.saveSystemVariable()"]

# 
俺は大きく息を吸う。[p]

# 
目の前の墓穴の外に向かって一歩踏み出した。[p]

# 同僚
お前、どこに行くんだよ？[p]

# サトウ
生きるために行くんだよ。あんたも逃げるなら今だぞ[p]

# 
俺は走る。[p]

# 
背後で破裂音がする。[p]

# 
それでも走り続ける。[p]

# 
やがて追ってくる足音はなくなった。[p]

# 
袋を下ろし、中から子供を出す。[p]

# サトウ
そういえば名前、聞いてなかったな。俺はサトウだ、あんたは？[p]

# カナメ
カナメです[p]

# サトウ
帰る家があるなら、途中まで送って行ってやる[p]

# カナメ
帰るところは、ありません[p]

# サトウ
そうか、俺もだ。とりあえず山頂を目指そう[p]

# 
しばらくして山頂に着く。[p]

; 背景画像を表示（storageは data/bgimage フォルダからのパス）
[bg storage="yubisaki/yubisaki-yama.png" time=1000]

# 監督
よう、お疲れサトウ[p]

# サトウ
監督[p]

# 監督
お前はもう少し賢い奴だと思ってたよ[p]

# サトウ
俺は向いてない[p]

# 監督
残念だよ。逃げ場なんてどこにもないんだよ[p]

# サトウ
そうだ監督。世話になった[p]

# 
スマホを投げつける。[p]

# 
体当たり。[p]

# 
もみ合い。[p]

# 
首を絞められる。[p]

# 
破裂音。[p]

# 
監督が倒れる。[p]

# サトウ
助かった。ありがとう[p]

# 
銃を受け取る。[p]

# 監督
……よくも、こんな……[p]

# サトウ
さようなら監督[p]

# 
銃声。[p]

# 
監督は動かなくなった。[p]

; --- シーンの開始地点 ---
*yubisaki_ending_start
[cm]
@layopt layer=message0 visible=true
; ↑回想から飛んできた時にメッセージウィンドウが出ていないのを防ぐ

# カナメ
これから、どうしよう？[p]

# 
夜明けの空が広がる。[p]

# サトウ
今日は天気もいい。歩きながら考えようか[p]

# カナメ
うん、そうだね。一緒に行こう[p]

# 
今日という日を生きるため、俺達は勇気をもって最初の一歩を踏み出すことにした。[p]


# 
完[p]

[cm]

; フラグを立てて保存
[eval exp="sf.cg.yubi_end = true"]
[eval exp="TYRANO.kag.saveSystemVariable()"]

; そのあと表示
[bg storage="yubisaki/yubi-ending.png" time=1000]

; しっかり見せる
[wait time=3000]


; 回想モードから来た場合はタイトルに戻る
[if exp="tf.replaying == true"]
    [eval exp="tf.replaying = false"]
    [jump storage="title.ks" target="*start"]
[endif]


[clearfix]
@layopt layer=message0 visible=false
@clearstack
[jump storage="title.ks" target="*start"]






