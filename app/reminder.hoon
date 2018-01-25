/?  310
::
::  models
::
|%
+=  move  (pair bone card)
+=  card  $%  [%wait wire p=@da]
              [%poke wire dock poke-content]
          ==
+=  poke-content  $%  ::  [%atom @]
                      [%email [address=@ta title=tape body=wall]]
                  ==
--
::
::  main app door
|_  [bol=bowl:gall my-email=@ta]
::  ++  poke-noun
::    |=  email=@ta
::    ^-  [(list move) _+>]
::    [[ost.bol %poke /email [our.bol dap.bol] %atom email]~ +>.$]
::
++  poke-atom
  |=  email=@ta
  ^-  [(list move) _+>]
  ~&  (weld "Your email has been set to: " (trip email))
  [~ +>.$(my-email email)]
::
::  ++  coup-email
::    |=  [wir=wire err=tang]
::    ?^  err
::      error/err
::    ~&  'Your email has been set!'
::    [~ +>.$]
::
++  poke-reminder
  |=  [delta=@dr message=@t]
  ^-  [(list move) _+>]
  ::
  =/  target  `@da`(add now.bol delta)
  =/  wir=wire  /reminder/[(scot %t message)]/[(scot %da target)]
  ~&  wir
  [[ost.bol %wait wir target]~ +>.$]
::
++  wake
  |=  [wir=wire ~]
  ^-  [(list move) _+>]
  ::
  ~&  reminder+wir
  =/  message  (trip (slav %t (snag 1 wir)))
  =/  title=tape  (weld "Reminder: " message)
  =/  body=wall  [(weld "Hey buddy. Here's that reminder you set: " message) ~]
  [[ost.bol %poke wir [our.bol %gmail] %email [my-email title body]]~ +>.$]
::
--
