%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Jan 2020 1:47 PM
%%%-------------------------------------------------------------------
-module(mylists).
-author("mark").

%% API
-export([sum/1, map/2]).

sum([H|T]) -> H + sum(T);
sum([]) -> 0.

%%  2> L = [1, 3, 10].
%%  [1,3,10]
%%  3> mylists:sum(L).
%%  14

map(_, []) -> [];
map(F, [H|T]) -> [F(H)|map(F, T)].

%%  6> List = [1, 2, 3, 4, 5].
%%  [1,2,3,4,5]

%%  8> mylists:map(fun(X) -> 2*X end, List).
%%  [2,4,6,8,10]

%%  9> mylists:map(fun(X) -> X*X end, List).
%%  [1,4,9,16,25]

