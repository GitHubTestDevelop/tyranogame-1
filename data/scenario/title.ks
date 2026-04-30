[cm]
[clearfix]
[freeimage layer="base"] 
[chara_hide_all time=0]

@clearstack
;akuma quest
;@bg storage ="title.png" time=100

;rakuen no neko
;@bg storage ="title.png" time=100

;yasu no daibouken
;@bg storage ="yasu/yasu-title.png" time=100

;yubisaki
[playbgm storage="yubisaki/ido.mp3" loop="true"]
@bg storage ="yubisaki/yubi-title.png" time=100

@wait time = 200

*start 
;[button x=135 y=230 graphic="title/button_start.png" enterimg="title/button_start.png"  target="gamestart" keyfocus="1"]
;[button x=135 y=320 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
;[button x=135 y=410 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" keyfocus="3"]
;[button x=135 y=500 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" keyfocus="4"]
;[button x=135 y=590 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="5"]

[button x=135 y=230 graphic="title/button_start4.png" enterimg="title/button_start5.png"  target="gamestart" keyfocus="1"]
[button x=135 y=320 graphic="title/button_load4.png" enterimg="title/button_load5.png" role="load" keyfocus="2"]
[button x=135 y=410 graphic="title/button_cg4.png" enterimg="title/button_cg5.png"" storage="cg.ks" keyfocus="3"]
[button x=135 y=500 graphic="title/button_replay4.png" enterimg="title/button_replay5.png" storage="replay.ks" keyfocus="4"]
[button x=135 y=590 graphic="title/button_config4.png" enterimg="title/button_config5.png" role="sleepgame"  storage="config.ks" keyfocus="5"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
;あくまくえすと	
;@jump storage="akumaquest/scene1.ks"

;楽園の猫
;@jump storage="rakuennoneko/scene1.ks"

;指先の勇気
@jump storage="yubisaki/scene1.ks"

;ヤスの大冒険
;@jump storage="yasunodaibouken/scene1.ks"

