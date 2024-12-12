(deftemplate UI-logic
   (slot display)
   (slot name (default none))
   (slot response (default none))
   (multislot answers)
   (slot state (default middle)))
(deftemplate state-list
   (slot curr)
   (multislot seq))
(deffacts startup
   (state-list))