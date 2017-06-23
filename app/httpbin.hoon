::  HTTP app test
::
::::  /hoon/httpbin/app
  ::
!:
|%
++  move  {bone card}
++  card
  $%  {$hiss wire (unit iden) response-type request}
  ==
++  response-type  mark
++  request  $%  {$purl purl}
             ==
--
++  http-status
  $?  $103  $200  $201  $202  $203  $204  $205  $206
      $207  $208  $300  $301  $302  $303  $304  $305
      $306  $307  $307  $308  $400  $401  $402  $403
      $404  $405  $406  $407  $408  $409  $410  $411
      $412  $413  $414  $415  $416  $417  $418  $419
      $420  $421  $422  $423  $424  $425  $426  $427
      $428  $429  $431  $440  $444  $449  $450  $451
      $495  $496  $497  $498  $499  $500  $501  $502
      $503  $504  $505  $506  $507  $508  $509  $510
      $511  $520  $521  $522  $523  $524  $525  $526
      $527  $530  $598  $599
  ==
++  multiplier/@ud
::
|_  {bow/bowl $~}
::
++  base-url
  (need (epur 'http://httpbin.org'))
::
++  poke-noun
  |=  a/(list {p/http-status q/multiplier})
  ^-  (quip move +>.$)
  :_  +>.$
  |-  ^-  (list move)
  ?~  a  ~
  %+  weld
    =/  pur/purl  base-url
    =.  q.q.pur  /status/(scot %ud p.i.a)
    =/  wir/wire  /(scot %ud p.i.a)
    %+  reap  q.i.a
    [ost.bow %hiss wir ~ %httr [%purl pur]]
  ?~  t.a  ~
  $(a t.a)
::
++  sigh-httr
  |=  {wir/wire httr}
  ^-  (quip move +>.$)
  ~&  [%got +<.$]
  [~ +>.$]
::
++  sigh-tang
  |=  {wire a/tang}
  ^-  (quip move +>.$)
  (mean a)
--
