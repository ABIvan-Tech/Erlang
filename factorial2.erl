-module(factorial2).
-export([calc/1]).

% Между разными клаузами функции нужен ;
calc(N) when is_integer(N), N >= 0 -> calc(N, 1);
calc(_) -> error.

% Внутренняя хвостовая рекурсивная реализация с аккумулятором
calc(0, Acc) -> Acc;
calc(N, Acc) when is_integer(N), N > 0 -> calc(N - 1, Acc * N).
