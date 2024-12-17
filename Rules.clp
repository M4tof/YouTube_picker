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
(assert (UI-logic (display oldAnwser)
                  (name oldAnwser)
                  (state youtubeChannelName))))


(defrule people-in-relation
(newOrOld new)
=>
(assert (UI-logic (display peopleInRelation)
                  (answers sick happy)
                  (name peopleInRelation))))

(defrule happy
(peopleInRelation happy)
=>
(assert (UI-logic (display happyAnswer)
                  (name happyAnswer)
                  (state youtubeChannelName))))

(defrule doctor-who
(peopleInRelation sick)
=>
(assert (UI-logic (display doctorWho)
                  (answers whatsThat absolutely)
                  (name doctorWho))))

(defrule absolutely
(doctorWho absolutely)
=>
(assert (UI-logic (display absolutelyAnswer)
                  (name absolutelyAnswer)
                  (state youtubeChannelName))))

(defrule how-many-people
(doctorWho whatsThat)
=>
(assert (UI-logic (display howManyPeople)
                  (answers five two)
                  (name howManyPeople))))

(defrule five
(howManyPeople five)
=>
(assert (UI-logic (display fiveAnswer)
                  (name fiveAnswer)
                  (state youtubeChannelName))))

(defrule short-or-tall
(howManyPeople two)
=>
(assert (UI-logic (display shortOrTall)
                  (answers short tall)
                  (name shortOrTall))))

(defrule short
(shortOrTall short)
=>
(assert (UI-logic (display shortAnswer)
                  (name shortAnswer)
                  (state youtubeChannelName))))

(defrule girls-or-boys
(shortOrTall tall)
=>
(assert (UI-logic (display girlsOrBoys)
                  (answers girls boys)
                  (name girlsOrBoys))))

(defrule girls
(girlsOrBoys girls)
=>
(assert (UI-logic (display girlsAnswer)
                  (name girlsAnswer)
                  (state youtubeChannelName))))

(defrule boys
(girlsOrBoys boys)
=>
(assert (UI-logic (display boysAnswer)
                  (name boysAnswer)
                  (state youtubeChannelName))))

(defrule what-accent
(singleOrColab single)
=>
(assert (UI-logic (display whatAccent)
                  (answers british american somethingElse)
                  (name whatAccent))))

(defrule is-canada-cool
(whatAccent somethingElse)
=>
(assert (UI-logic (display isCanadaCool)
                  (answers yeah canadaSucks)
                  (name isCanadaCool))))

(defrule yeah
(isCanadaCool yeah)
=>
(assert (UI-logic (display yeahAnswer)
                  (name yeahAnswer)
                  (state youtubeChannelName))))

(defrule which-is-funnier
(isCanadaCool canadaSucks)
=>
(assert (UI-logic (display whichIsFunnier)
                  (answers selfDepricatingHumor jokesAboutChickens)
                  (name whichIsFunnier))))

(defrule jokes-about-chickens
(whichIsFunnier jokesAboutChickens)
=>
(assert (UI-logic (display jokesAboutChickensAnswer)
                  (name jokesAboutChickensAnswer)
                  (state youtubeChannelName))))

(defrule self-depricating-humor
(whichIsFunnier selfDepricatingHumor)
=>
(assert (UI-logic (display selfDepricatingHumorAnswer)
                  (name selfDepricatingHumorAnswer)
                  (state youtubeChannelName))))

(defrule is-tennant-attractive
(whatAccent british)
=>
(assert (UI-logic (display isTennantAttractive)
                  (answers duh no)
                  (name isTennantAttractive))))

(defrule duh
(isTennantAttractive duh)
=>
(assert (UI-logic (display duhAnswer)
                  (name duhAnswer)
                  (state youtubeChannelName))))

(defrule are-boys-who-play-hot
(isTennantAttractive no)
=>
(assert (UI-logic (display areBoysWhoPlayHot)
                  (answers yes no)
                  (name areBoysWhoPlayHot))))

(defrule scripted-or-spontaneous
(areBoysWhoPlayHot no)
=>
(assert (UI-logic (display scriptedOrSpontaneous)
                  (answers spontaneous scripted)
                  (name scriptedOrSpontaneous))))

(defrule spontaneous
(scriptedOrSpontaneous spontaneous)
=>
(assert (UI-logic (display spontaneousAnswer)
                  (name spontaneousAnswer)
                  (state youtubeChannelName))))

(defrule scripted
(scriptedOrSpontaneous scripted)
=>
(assert (UI-logic (display scriptedAnswer)
                  (name scriptedAnswer)
                  (state youtubeChannelName))))

(defrule is-twilight-hated
(areBoysWhoPlayHot yes)
=>
(assert (UI-logic (display isTwilightHated)
                  (answers yes no dontCare)
                  (name isTwilightHated))))

(defrule hated
(isTwilightHated yes)
=>
(assert (UI-logic (display hatedAnswer)
                  (name hatedAnswer)
                  (state youtubeChannelName))))

(defrule not-hated
(isTwilightHated no)
=>
(assert (UI-logic (display notHatedAnswer)
                  (name notHatedAnswer)
                  (state youtubeChannelName))))

(defrule dont-care
(isTwilightHated dontCare)
=>
(assert (UI-logic (display dontCareAnswer)
                  (name dontcareAnswer)
                  (state youtubeChannelName))))

(defrule sings-sometimes-or-never
(whatAccent american)
=>
(assert (UI-logic (display singsSometimesOrNever)
                  (answers sometimesSings neverSings)
                  (name singsSometimesOrNever))))

(defrule daily-or-not
(singsSometimesOrNever neverSings)
=>
(assert (UI-logic (display dailyOrNot)
                  (answers yes no)
                  (name dailyOrNot))))

(defrule daily
(dailyOrNot yes)
=>
(assert (UI-logic (display dailyAnswer)
                  (name dailyAnswer)
                  (state youtubeChannelName))))

(defrule avice-or-not
(dailyOrNot no)
=>
(assert (UI-logic (display aviceOrNot)
                  (answers yesPlease no)
                  (name aviceOrNot))))

(defrule yes-please
(aviceOrNot yesPlease)
=>
(assert (UI-logic (display yesPleaseAnswer)
                  (name yesPleaseAnswer)
                  (state youtubeChannelName))))

(defrule likes-seeing-different-versions-of-people-or-not
(aviceOrNot no)
=>
(assert (UI-logic (display likesSeeingDifferentVersionsOfPeopleOrNot)
                  (answers yes noThatsWeird)
                  (name likesSeeingDifferentVersionsOfPeopleOrNot))))

(defrule likes-seeing-different-versions-of-people
(likesSeeingDifferentVersionsOfPeopleOrNot yes)
=>
(assert (UI-logic (display likesSeeingDifferentVersionsOfPeopleAnswer)
                  (name likesSeeingDifferentVersionsOfPeopleAnswer)
                  (state youtubeChannelName))))

(defrule how-many-subscribers
(likesSeeingDifferentVersionsOfPeopleOrNot noThatsWeird)
=>
(assert (UI-logic (display howManySubscribers)
                  (answers lessThan100000 moreThan100000)
                  (name howManySubscribers))))

(defrule what-want-to-watch-someone-do
(howManySubscribers moreThan100000)
=>
(assert (UI-logic (display whatWantToWatchSomeoneDo)
                  (answers talkWorldIssues rantAndBeAdorable putOnMakeUp)
                  (name whatWantToWatchSomeoneDo))))

(defrule talk-world-issues
(whatWantToWatchSomeoneDo talkWorldIssues)
=>
(assert (UI-logic (display talkWorldIssuesAnswer)
                  (name talkWorldIssuesAnswer)
                  (state youtubeChannelName))))

(defrule rant-and-be-adorable
(whatWantToWatchSomeoneDo rantAndBeAdorable)
=>
(assert (UI-logic (display rantAndBeAdorableAnswer)
                  (name rantAndBeAdorableAnswer)
                  (state youtubeChannelName))))

(defrule put-on-make-up
(whatWantToWatchSomeoneDo putOnMakeUp)
=>
(assert (UI-logic (display putOnMakeUpAnswer)
                  (name putOnMakeUpAnswer)
                  (state youtubeChannelName))))

(defrule is-typography-cool
(howManySubscribers lessThan100000)
=>
(assert (UI-logic (display isTypographyCool)
                  (answers agreed whatsTypography)
                  (name isTypographyCool))))

(defrule agreed
(isTypographyCool agreed)
=>
(assert (UI-logic (display agreedAnswer)
                  (name agreedAnswer)
                  (state youtubeChannelName))))

(defrule only-fiveawesomes-or-not
(isTypographyCool whatsTypography)
=>
(assert (UI-logic (display onlyFiveawesomesOrNot)
                  (answers yes whoAreThey)
                  (name onlyFiveawesomesOrNot))))

(defrule girls-or-boys-fiveawesomes
(onlyFiveawesomesOrNot yes)
=>
(assert (UI-logic (display girlsOrBoysFiveawesomes)
                  (answers boys girls)
                  (name girlsOrBoysFiveawesomes))))

(defrule girls-fiveawesomes
(girlsOrBoysFiveawesomes girls)
=>
(assert (UI-logic (display girlsFiveawesomesAnswer)
                  (name girlsFiveawesomesAnswer)
                  (state youtubeChannelName))))

(defrule boys-fiveawesomes
(girlsOrBoysFiveawesomes boys)
=>
(assert (UI-logic (display boysFiveawesomesAnswer)
                  (name boysFiveawesomesAnswer)
                  (state youtubeChannelName))))

(defrule you-are-picky
(onlyFiveawesomesOrNot whoAreThey)
=>
(assert (UI-logic (display youArePicky)
                  (answers yup)
                  (name youArePicky))))

(defrule yup
(youArePicky yup)
=>
(assert (UI-logic (display yupAnswer)
                  (name yupAnswer)
                  (state youtubeChannelName))))

(defrule likes-rapping-or-not
(singsSometimesOrNever sometimesSings)
=>
(assert (UI-logic (display likesRappingOrNot)
                  (answers yes no)
                  (name likesRappingOrNot))))

(defrule likes-rapping
(likesRappingOrNot yes)
=>
(assert (UI-logic (display likesRappingAnswer)
                  (name likesRappingAnswer)
                  (state youtubeChannelName))))

(defrule likes-breakfast-songs-or-not
(likesRappingOrNot no)
=>
(assert (UI-logic (display likesBreakfastSongsOrNot)
                  (answers ofCourse umNo)
                  (name likesBreakfastSongsOrNot))))

(defrule likes-breakfast-songs
(likesBreakfastSongsOrNot ofCourse)
=>
(assert (UI-logic (display likesBreakfastSongsAnswer)
                  (name likesBreakfastSongsAnswer)
                  (state youtubeChannelName))))

(defrule likes-charts-graphs-or-not
(likesBreakfastSongsOrNot umNo)
=>
(assert (UI-logic (display likesChartsGraphsOrNot)
                  (answers yes! notReally)
                  (name likesChartsGraphsOrNot))))

(defrule likes-charts-graphs
(likesChartsGraphsOrNot yes!)
=>
(assert (UI-logic (display likesChartsGraphsAnswer)
                  (name likesChartsGraphsAnswer)
                  (state youtubeChannelName))))

(defrule loves-all-caps-or-not
(likesChartsGraphsOrNot notReally)
=>
(assert (UI-logic (display lovesAllCapsOrNot)
                  (answers yesCaps notMyStyle)
                  (name lovesAllCapsOrNot))))

(defrule girls-or-boys-rule
(lovesAllCapsOrNot yesCaps)
=>
(assert (UI-logic (display girlsOrBoysRule)
                  (answers girls! boys!)
                  (name girlsOrBoysRule))))

(defrule girls-rule
(girlsOrBoysRule girls!)
=>
(assert (UI-logic (display girlsRuleAnswer)
                  (name girlsRuleAnswer)
                  (state youtubeChannelName))))

(defrule boys-rule
(girlsOrBoysRule boys!)
=>
(assert (UI-logic (display boysRuleAnswer)
                  (name boysRuleAnswer)
                  (state youtubeChannelName))))

(defrule insists-on-fiveawesomegirl-or-not
(lovesAllCapsOrNot notMyStyle)
=>
(assert (UI-logic (display insistsOnFiveawesomegirlOrNot)
                  (answers yes no)
                  (name insistsOnFiveawesomegirlOrNot))))

(defrule insists-on-fiveawesomegirl
(insistsOnFiveawesomegirlOrNot yes)
=>
(assert (UI-logic (display insistsOnFiveawesomegirlAnswer)
                  (name insistsOnFiveawesomegirlAnswer)
                  (state youtubeChannelName))))

(defrule likes-happy-people-or-not
(insistsOnFiveawesomegirlOrNot no)
=>
(assert (UI-logic (display likesHappyPeopleOrNot)
                  (answers sadFace happyFace)
                  (name likesHappyPeopleOrNot))))

(defrule likes-happy-people
(likesHappyPeopleOrNot happyFace)
=>
(assert (UI-logic (display likesHappyPeopleAnswer)
                  (name likesHappyPeopleAnswer)
                  (state youtubeChannelName))))

(defrule when-not-singing
(likesHappyPeopleOrNot sadFace)
=>
(assert (UI-logic (display whenNotSinging)
                  (answers talkFast talkSlow)
                  (name whenNotSinging))))

(defrule talk-fast
(whenNotSinging talkFast)
=>
(assert (UI-logic (display talkFastAnswer)
                  (name talkFastAnswer)
                  (state youtubeChannelName))))

(defrule prefers-to-review
(whenNotSinging talkSlow)
=>
(assert (UI-logic (display prefersToReview)
                  (answers technology books)
                  (name prefersToReview))))

(defrule technology
(prefersToReview technology)
=>
(assert (UI-logic (display technologyAnswer)
                  (name technologyAnswer)
                  (state youtubeChannelName))))

(defrule books
(prefersToReview books)
=>
(assert (UI-logic (display booksAnswer)
                  (name booksAnswer)
                  (state youtubeChannelName))))

(defrule wizard-or-muggle
(start musicianStart)
=>
(assert (UI-logic (display wizardOrMuggle)
                  (answers wizard muggle)
                  (name wizardOrMuggle))))

(defrule wizard-rock-is
(wizardOrMuggle wizard)
=>
(assert (UI-logic (display wizardRockIs)
                  (answers awesome kindOfWeird)
                  (name wizardRockIs))))

(defrule kind-of-weird
(wizardRockIs kindOfWeird)
=>
(assert (UI-logic (display kindOfWeirdAnswer)
                  (name kindOfWeirdAnswer)
                  (state youtubeChannelName))))

(defrule live-performances-or-not
(wizardRockIs awesome)
=>
(assert (UI-logic (display livePerformancesOrNot)
                  (answers yes no)
                  (name livePerformancesOrNot))))

(defrule live-performances
(livePerformancesOrNot yes)
=>
(assert (UI-logic (display livePerformancesAnswer)
                  (name livePerformancesAnswer)
                  (state youtubeChannelName))))

(defrule too-cheap-to-buy-cds-or-not
(livePerformancesOrNot no)
=>
(assert (UI-logic (display tooCheapToBuyCdsOrNot)
                  (answers weasley malfoy)
                  (name tooCheapToBuyCdsOrNot))))

(defrule weasley
(tooCheapToBuyCdsOrNot weasley)
=>
(assert (UI-logic (display weasleyAnswer)
                  (name weasleyAnswer)
                  (state youtubeChannelName))))

(defrule is-whomping-willow-awesome
(tooCheapToBuyCdsOrNot malfoy)
=>
(assert (UI-logic (display isWhompingWillowAwesome)
                  (answers true false)
                  (name isWhompingWillowAwesome))))

(defrule true
(isWhompingWillowAwesome true)
=>
(assert (UI-logic (display trueAnswer)
                  (name trueAnswer)
                  (state youtubeChannelName))))

(defrule true
(isWhompingWillowAwesome false)
=>
(assert (UI-logic (display falseAnswer)
                  (name falseAnswer)
                  (state youtubeChannelName))))

(defrule must-exist-or-not
(wizardOrMuggle muggle)
=>
(assert (UI-logic (display mustExistOrNot)
                  (answers yes no)
                  (name mustExistOrNot))))

(defrule not-necessary-to-exist
(mustExistOrNot no)
=>
(assert (UI-logic (display notNecessaryToExistAnswer)
                  (name notNecessaryToExistAnswer)
                  (state youtubeChannelName))))


(defrule is-lost-best
(mustExistOrNot yes)
=>
(assert (UI-logic (display isLostBest)
                  (answers absolutely notAtAll)
                  (name isLostBest))))

(defrule lost-best
(isLostBest absolutely)
=>
(assert (UI-logic (display lostBestAnswer)
                  (name lostBestAnswer)
                  (state youtubeChannelName))))

(defrule likes-couples-or-not
(isLostBest notAtAll)
=>
(assert (UI-logic (display likesCouplesOrNot)
                  (answers yes! blech)
                  (name likesCouplesOrNot))))

(defrule likes-electronica-or-not
(likesCouplesOrNot yes!)
=>
(assert (UI-logic (display likesElectronicaOrNot)
                  (answers yes! no)
                  (name likesElectronicaOrNot))))

(defrule likes-electronica
(likesElectronicaOrNot yes!)
=>
(assert (UI-logic (display likesElectronicaAnswer)
                  (name likesElectronicaAnswer)
                  (state youtubeChannelName))))

(defrule dislikes-electronica
(likesElectronicaOrNot no)
=>
(assert (UI-logic (display dislikesElectronicaAnswer)
                  (name dislikesElectronicaAnswer)
                  (state youtubeChannelName))))

(defrule easily-offended-or-not
(likesCouplesOrNot blech)
=>
(assert (UI-logic (display easilyOffendedOrNot)
                  (answers yes no)
                  (name easilyOffendedOrNot))))

(defrule not-easily-offended
(easilyOffendedOrNot no)
=>
(assert (UI-logic (display notEasilyOffended)
                  (name notEasilyOffended)
                  (state youtubeChannelName))))

(defrule likes-ukuleles-or-not
(easilyOffendedOrNot yes)
=>
(assert (UI-logic (display likesUkulelesOrNot)
                  (answers heckYes notReally)
                  (name likesUkulelesOrNot))))

(defrule nerdy-or-normal
(likesUkulelesOrNot heckYes)
=>
(assert (UI-logic (display nerdyOrNormal)
                  (answers nerdy normal)
                  (name nerdyOrNormal))))

(defrule normal
(nerdyOrNormal normal)
=>
(assert (UI-logic (display normalAnswer)
                  (name normalAnswer)
                  (state youtubeChannelName))))

(defrule nerdy
(nerdyOrNormal nerdy)
=>
(assert (UI-logic (display nerdyAnswer)
                  (name nerdyAnswer)
                  (state youtubeChannelName))))

(defrule mellow-or-rock
(likesUkulelesOrNot notReally)
=>
(assert (UI-logic (display mellowOrRock)
                  (answers mellow rock)
                  (name mellowOrRock))))

(defrule mellow
(mellowOrRock mellow)
=>
(assert (UI-logic (display mellowAnswer)
                  (name mellowAnswer)
                  (state youtubeChannelName))))

(defrule strange-or-normal
(mellowOrRock rock)
=>
(assert (UI-logic (display strangeOrNormal)
                  (answers strange normal)
                  (name strangeOrNormal))))

(defrule miley-or-randomness
(strangeOrNormal strange)
=>
(assert (UI-logic (display mileyOrRandomness)
                  (answers miley random)
                  (name mileyOrRandomness))))

(defrule miley
(mileyOrRandomness miley)
=>
(assert (UI-logic (display mileyAnswer)
                  (name mileyAnswer)
                  (state youtubeChannelName))))

(defrule random
(mileyOrRandomness random)
=>
(assert (UI-logic (display randomAnswer)
                  (name randomAnswer)
                  (state youtubeChannelName))))

(defrule piano-or-guitar
(strangeOrNormal normal)
=>
(assert (UI-logic (display pianoOrGuitar)
                  (answers piano guitar)
                  (name pianoOrGuitar))))

(defrule piano
(pianoOrGuitar piano)
=>
(assert (UI-logic (display pianoAnswer)
                  (name pianoAnswer)
                  (state youtubeChannelName))))

(defrule guitar
(pianoOrGuitar guitar)
=>
(assert (UI-logic (display guitarAnswer)
                  (name guitarAnswer)
                  (state youtubeChannelName))))