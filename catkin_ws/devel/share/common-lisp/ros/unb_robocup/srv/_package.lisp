(cl:defpackage unb_robocup-srv
  (:use )
  (:export
   "MOVETO"
   "<MOVETO-REQUEST>"
   "MOVETO-REQUEST"
   "<MOVETO-RESPONSE>"
   "MOVETO-RESPONSE"
   "ROBOTHASFALLEN"
   "<ROBOTHASFALLEN-REQUEST>"
   "ROBOTHASFALLEN-REQUEST"
   "<ROBOTHASFALLEN-RESPONSE>"
   "ROBOTHASFALLEN-RESPONSE"
   "GETROBOTSTATE"
   "<GETROBOTSTATE-REQUEST>"
   "GETROBOTSTATE-REQUEST"
   "<GETROBOTSTATE-RESPONSE>"
   "GETROBOTSTATE-RESPONSE"
   "TRACKLINES"
   "<TRACKLINES-REQUEST>"
   "TRACKLINES-REQUEST"
   "<TRACKLINES-RESPONSE>"
   "TRACKLINES-RESPONSE"
   "SETWALKTARGETVELOCITY"
   "<SETWALKTARGETVELOCITY-REQUEST>"
   "SETWALKTARGETVELOCITY-REQUEST"
   "<SETWALKTARGETVELOCITY-RESPONSE>"
   "SETWALKTARGETVELOCITY-RESPONSE"
   "CALCHISTOGRAM"
   "<CALCHISTOGRAM-REQUEST>"
   "CALCHISTOGRAM-REQUEST"
   "<CALCHISTOGRAM-RESPONSE>"
   "CALCHISTOGRAM-RESPONSE"
   "ROTATE"
   "<ROTATE-REQUEST>"
   "ROTATE-REQUEST"
   "<ROTATE-RESPONSE>"
   "ROTATE-RESPONSE"
   "TRACKGOAL"
   "<TRACKGOAL-REQUEST>"
   "TRACKGOAL-REQUEST"
   "<TRACKGOAL-RESPONSE>"
   "TRACKGOAL-RESPONSE"
   "KICKLEFT"
   "<KICKLEFT-REQUEST>"
   "KICKLEFT-REQUEST"
   "<KICKLEFT-RESPONSE>"
   "KICKLEFT-RESPONSE"
   "GETSONAR"
   "<GETSONAR-REQUEST>"
   "GETSONAR-REQUEST"
   "<GETSONAR-RESPONSE>"
   "GETSONAR-RESPONSE"
   "MOVEAROUNDPOINT"
   "<MOVEAROUNDPOINT-REQUEST>"
   "MOVEAROUNDPOINT-REQUEST"
   "<MOVEAROUNDPOINT-RESPONSE>"
   "MOVEAROUNDPOINT-RESPONSE"
   "MOVETOWARD"
   "<MOVETOWARD-REQUEST>"
   "MOVETOWARD-REQUEST"
   "<MOVETOWARD-RESPONSE>"
   "MOVETOWARD-RESPONSE"
   "CHANGEJOINTANGLE"
   "<CHANGEJOINTANGLE-REQUEST>"
   "CHANGEJOINTANGLE-REQUEST"
   "<CHANGEJOINTANGLE-RESPONSE>"
   "CHANGEJOINTANGLE-RESPONSE"
   "MOVEJOINT"
   "<MOVEJOINT-REQUEST>"
   "MOVEJOINT-REQUEST"
   "<MOVEJOINT-RESPONSE>"
   "MOVEJOINT-RESPONSE"
   "STIFFNESSON"
   "<STIFFNESSON-REQUEST>"
   "STIFFNESSON-REQUEST"
   "<STIFFNESSON-RESPONSE>"
   "STIFFNESSON-RESPONSE"
   "STIFFNESSOFF"
   "<STIFFNESSOFF-REQUEST>"
   "STIFFNESSOFF-REQUEST"
   "<STIFFNESSOFF-RESPONSE>"
   "STIFFNESSOFF-RESPONSE"
   "TRACKBALL"
   "<TRACKBALL-REQUEST>"
   "TRACKBALL-REQUEST"
   "<TRACKBALL-RESPONSE>"
   "TRACKBALL-RESPONSE"
   "KICKRIGHT"
   "<KICKRIGHT-REQUEST>"
   "KICKRIGHT-REQUEST"
   "<KICKRIGHT-RESPONSE>"
   "KICKRIGHT-RESPONSE"
   "GETGYRO"
   "<GETGYRO-REQUEST>"
   "GETGYRO-REQUEST"
   "<GETGYRO-RESPONSE>"
   "GETGYRO-RESPONSE"
   "GOTOPOSTURE"
   "<GOTOPOSTURE-REQUEST>"
   "GOTOPOSTURE-REQUEST"
   "<GOTOPOSTURE-RESPONSE>"
   "GOTOPOSTURE-RESPONSE"
   "SPLMSG"
   "<SPLMSG-REQUEST>"
   "SPLMSG-REQUEST"
   "<SPLMSG-RESPONSE>"
   "SPLMSG-RESPONSE"
   "SPLMSGSEND"
   "<SPLMSGSEND-REQUEST>"
   "SPLMSGSEND-REQUEST"
   "<SPLMSGSEND-RESPONSE>"
   "SPLMSGSEND-RESPONSE"
   "GETACCEL"
   "<GETACCEL-REQUEST>"
   "GETACCEL-REQUEST"
   "<GETACCEL-RESPONSE>"
   "GETACCEL-RESPONSE"
   "GETJOINTANGLE"
   "<GETJOINTANGLE-REQUEST>"
   "GETJOINTANGLE-REQUEST"
   "<GETJOINTANGLE-RESPONSE>"
   "GETJOINTANGLE-RESPONSE"
   "GETIMU"
   "<GETIMU-REQUEST>"
   "GETIMU-REQUEST"
   "<GETIMU-RESPONSE>"
   "GETIMU-RESPONSE"
   "STOPMOVE"
   "<STOPMOVE-REQUEST>"
   "STOPMOVE-REQUEST"
   "<STOPMOVE-RESPONSE>"
   "STOPMOVE-RESPONSE"
   "GETIMAGE"
   "<GETIMAGE-REQUEST>"
   "GETIMAGE-REQUEST"
   "<GETIMAGE-RESPONSE>"
   "GETIMAGE-RESPONSE"
   "SPLMSGGET"
   "<SPLMSGGET-REQUEST>"
   "SPLMSGGET-REQUEST"
   "<SPLMSGGET-RESPONSE>"
   "SPLMSGGET-RESPONSE"
   "STOPPOSTURE"
   "<STOPPOSTURE-REQUEST>"
   "STOPPOSTURE-REQUEST"
   "<STOPPOSTURE-RESPONSE>"
   "STOPPOSTURE-RESPONSE"
  ))
