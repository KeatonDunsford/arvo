::  Hood, generic: export named marked Hood component's state from backup.
::  (Hack: we're just printf-ing here and exporting the Screen/Tmux buffer.)
::
::::  /hoon/export/hood/gen
  ::
/+    hood-womb
::
::::
  ::
:-  %say
|=  $:  [now=@da eny=@uvJ byk=beak]
        [[dap=term pas=@uw ~] ~]
    ==
^-  [%helm-hi @t]
?+  dap  ~|(unknown-backup/dap !!)
  %womb
    =+  dat=.^(@ %cx (en-beam:format byk /jam-crub/womb-part/bak/hood/app))
    =+  womb-state=;;(part:hood-womb (cue (dy:crub:crypto pas dat)))
    ~&
::      ^-  [%export %womb-state (list)]
      :-  %export
      :-  %womb-state
::  ::
::  ::  bureau
::  ::
::  ::      :-  
::  ::        :*  "invite-code"
::  ::            "balance-planets"
::  ::            "balance-stars"
::  ::            "holder-email-address"
::  ::        ==
::  ::        %+  turn
::  ::          ~(tap by bureau.womb-state)
::  ::        |=  office-item=(pair passhash:hood-womb balance:hood-womb)
::  ::        :-
::  ::          invite-code=p.office-item
::  ::          :*  balance-planets=planets.q.office-item
::  ::              balance-stars=stars.q.office-item
::  ::              holder-email-address=owner.q.office-item
::  ::          ==
::  ::
::  ::  office
::  ::
::        :~
::          =+  ^=  galaxies
::            %+  turn
::              ~(tap by galaxies.office.womb-state)
::            |=  [galaxy=@p managed-galaxy=galaxy:hood-womb]
::            ?<  ?=(~ managed-galaxy)
::            ?>  ?=(%.y -.u.managed-galaxy)
::  ::          =+  ^=  foil-moon-box-item
::  ::            %+  turn
::  ::              ~(tap by box.p.p.u.managed-galaxy)
::  ::            |=  [her=@u moon=moon:hood-womb]
::  ::            ^-  [claimed-moon=tape holder-email-address=tape]
::  ::            ?<  ?=(~ moon)
::  ::            [(scow %p (cat 8 galaxy her)) (trip (@t p.u.moon))]
::  ::          =+  ^=  foil-planet-box-item
::  ::            %+  turn
::  ::              ~(tap by box.q.p.u.managed-galaxy)
::  ::            |=  [her=@u planet=planet:hood-womb]
::  ::            ^-  [claimed-planet=tape holder-email-address=tape]
::  ::            ?<  ?=(~ planet)
::  ::            [(scow %p (cat 4 galaxy her)) (trip (@t p.u.planet))]
::            =+  ^=  foil-star-box-item
::              %+  turn
::                ~(tap by box.r.p.u.managed-galaxy)
::              |=  [her=@u star=star:hood-womb]
::              ^-  [claimed-star=tape holder-email-address=tape]
::              ?<  ?=(~ star)
::              [(scow %p (cat 2 galaxy her)) (trip (@t p.u.star))]
::  ::          ?~  foil-moon-box-item
::  ::            ?~  foil-planet-box-item
::                ?~  foil-star-box-item
::                  ~
::                foil-star-box-item=foil-star-box-item
::  ::            [foil-planet-box-item foil-star-box-item]
::  ::          :+  foil-moon-box-item
::  ::            foil-planet-box-item
::  ::          foil-star-box-item
::  ::        =+  ^=  stars
::  ::        =+  ^=  planets
::          galaxies
::        ==
::
::  hotel
::
      %+  turn
        ~(tap by hotel.womb-state)
      |=  [holder=(each ship mail:hood-womb) client=client:hood-womb]
      ^-  [holder-email-address=tape claimed-planets=tape]
      ?>  ?=(%.n -.holder)
      :-  (trip (@t p.holder))
      =+  ^=  has
      ^-  (list tape)
      %+  turn
        ~(tap in has.client)
      |=  her=@p
      (scow %p her)
      =|  claimed-planets=tape
      |-
      ?~  has
        ~
      ?~  t.has
        ?~  claimed-planets
          (weld claimed-planets i.has)
        ;:(weld claimed-planets " " i.has)
      ?~  claimed-planets
        $(claimed-planets (weld claimed-planets i.has), has t.has)
      $(claimed-planets ;:(weld claimed-planets " " i.has), has t.has)
    [%helm-hi '']
==
::
