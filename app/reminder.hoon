/?  310
::
::  models
::
|%
+=  move  (pair bone card)
+=  card  $%  [%wait wire p=@da]
              [%poke wire dock poke-content]
          ==
+=  poke-content  [%email [address=@ta title=tape body=wall]]
--
::
::  main app door
|_  [bol=bowl:gall ~]
++  poke-reminder
  |=  [delta=@dr message=@t]
  ^-  [(list move) _+>]
  ::
  =/  target  `@da`(add now.bol delta)
  =/  wir=wire  /[(scot %t message)]/[(scot %da target)]
  ~&  wir
  [[ost.bol %wait wir target]~ +>.$]
::
++  wake
  |=  [wir=wire ~]
  ^-  [(list move) _+>]
  ::
  ~&  reminder+wir
  =/  message  (trip (slav %t (snag 0 wir)))
  =/  address=@ta  'keaton@tlon.io'
  =/  title=tape  (weld "Reminder: " message)
  =/  body=wall  [(weld "Hey buddy. Here's that reminder you set: " message) ~]
  [[ost.bol %poke wir [our.bol %gmail] %email [address title body]]~ +>.$]
::
--
