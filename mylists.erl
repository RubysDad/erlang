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

%%  list comprehensions: are expressions that create lists without having to use funs, maps, or filters.

%%  1> L = [1, 2, 3, 4, 5].
%%  [1,2,3,4,5]
%%  3> [2*X || X <- L].
%%  [2,4,6,8,10]

%%  4> Buy = [{oranges, 4}, {newspaper, 1}, {apples, 10}, {pears, 3}, {milk, 3}].
%%  [{oranges,4},{newspaper,1},{apples,10},{pears,3},{milk,3}]
%%  5> [{Name, 2 * Number} || {Name, Number} <- Buy].
%%  [{oranges,8},{newspaper,2},{apples,20},{pears,6},{milk,6}]

%%  Note that the tuple {Name, Number} to the right side of the (||) sign is a pattern
%%  that matches each of the elements in the list Buy. The tuple to the left side,
%%  {Name, 2*Number}, is a constructor.

