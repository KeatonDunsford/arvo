|%
++  expr                                                ::  clojure expression 
  |-  ;~  pose
    %+  ifix  [pel per]
    (most ace (knee ** |.(^$)))                         ::  TODO: tighten types
  ::
    term
  ==
::
++  term  (plus ;~(less pel per gah prn))               ::  terminal symbol 
  ::
::::  testing core
::
++  test
  |%
  ++  eq                                                ::  print on failure
    |=  {msg/@tas a/* b/*}
    ^-  {@tas @tas}
    ?.  =(a b)
      ~&  msg
      !!
    ok+msg
  ::
  ++  test-expr
    ~&  %^  eq  %expr-nested
      (scan "((arf blat) c)" expr)
    ~[~["arf" "blat"] "c"]
    ::
    ~&  %^  eq  %expr-numbers
      (scan "((10 20) 3)" expr)
    ~[~["10" "20"] "3"]
    ::
    ~&  %^  eq  %expr-symbols
      (scan "((* +) -)" expr)
    ~[~["*" "+"] "-"]
    %expr-great-success
  --
--
