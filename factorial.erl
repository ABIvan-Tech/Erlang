-module(factorial).
-export([calc/1]).

calc(0) -> 1;
calc(1) -> 1;
calc(N) when N > 1 -> N * calc(N-1).