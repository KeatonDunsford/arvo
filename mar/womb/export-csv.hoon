::
::::  /hoon/export-csv/womb/mar
  ::
/+    hood-womb
::
::::  ~tonlur-sarret
  ::
|_  all=(map ship stat:hood-womb)
::
++  grab                                                ::  Convert from.
  |%
  ++  noun  (map ship stat:hood-womb)                   ::  Mold from %noun.
  --
++  grow
  |%
  ++  json
    %-  pairs:enjs:format
    %+  turn  ~(tap by all)
    |=  [a=ship b=stat:hood-womb]
    ^-  [cord ^json]
    :-  (crip +:<a>)
    (pairs:enjs:format live/[%s p.b] dist/(json-dist q.b) ~)
  ::
  ++  json-dist
    |=  a=dist:hood-womb
    %+  frond:enjs:format -.a
    ?-  -.a
      %free  b/&
      %owned  s/p.a
      %split  json(all p.a)
    ==
  --
--
