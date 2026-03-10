% factorial_test.erl
-module(factorial_test).
-include_lib("eunit/include/eunit.hrl").

calc_test_() ->
    [
        ?_assertEqual(1,   factorial:calc(0)),
        ?_assertEqual(1,   factorial:calc(1)),
        ?_assertEqual(6,   factorial:calc(3)),
        ?_assertEqual(120, factorial:calc(5)),
        ?_assertEqual(3628800, factorial:calc(10))
    ].

calc2_test_() ->
    [
        ?_assertEqual(1,   factorial2:calc(0)),
        ?_assertEqual(1,   factorial2:calc(1)),
        ?_assertEqual(6,   factorial2:calc(3)),
        ?_assertEqual(120, factorial2:calc(5)),
        ?_assertEqual(3628800, factorial2:calc(10)),
        ?_assertEqual(error, factorial2:calc(-1)),
        ?_assertEqual(error, factorial2:calc('string')),
        ?_assertEqual(error, factorial2:calc(3.14159))
    ].    