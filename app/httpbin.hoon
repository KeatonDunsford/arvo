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
::
|_  {bow/bowl $~}
++  base-url  
  (need (epur 'http://httpbin.org'))
::
++  poke-noun
  |=  a/(list {p/?($200 $404 $501) q/@ud})
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
