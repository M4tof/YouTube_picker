(defrule start-point
=>
(assert (UI-logic (display startMessage)
                  (answers vloggerStart musicianStart)
                  (name start))))

(defrule single-or-collab
(start vloggerStart)
=>
(assert (UI-logic (display singleOrColab)
                  (answers collab single)
                  (name singleOrColab))))

(defrule new-or-old
(singleOrColab collab)
=>
(assert (UI-logic (display newOrOld)
                  (answers old new)
                  (name newOrOld))))

(defrule old
(newOrOld old)
=>
(assert (UI-logic (display FIVEAWESOMEGUYS)
                  (name FIVEAWESOMEGUYS)
                  (state youtubeChannelName))))