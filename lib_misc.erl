%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Jan 2020 1:35 PM
%%%-------------------------------------------------------------------
-module(lib_misc).
-author("mark").

%% API
-export([for/3, odds_and_evens2/1, count_characters/1]).

%% creating our own custom for loop

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I)|for(I+1, Max, F)].

%%  lib_misc:for(1, 10, F).
%%   => [F(1), F(2), ...F(10)]

%%  lib_misc:for(1, 10, fun(I) -> I end).
%%  => [1,2,3,4,5,6,7,8,9,10]

%%  4> lib_misc:for(1, 10, fun(I) -> I*I end).
%%  [1,4,9,16,25,36,49,64,81,100]

%% Split list of ints into two lists
%%odds_and_evens1(L) ->
%%  Odds = [X || X <- L, (X rem 2) =:= 1],
%%  Evens = [X || X <- L, (X rem 2) =:= 0],
%%  {Odds, Evens}.

%%  lib_misc:odds_and_evens1([1,2,3,4,5,6]).
%%  {[1,3,5],[2,4,6]}

%% Better way to do it
odds_and_evens2(L) ->
  odds_and_evens_acc(L, [], []).

odds_and_evens_acc([H|T], Odds, Evens) ->
  case (H rem 2) of
    1 -> odds_and_evens_acc(T, [H|Odds], Evens);
    0 -> odds_and_evens_acc(T, Odds, [H|Evens])
  end;
  odds_and_evens_acc([], Odds, Evens) ->
    {lists:reverse(Odds), lists:reverse(Evens)}.
%%  lib_misc:odds_and_evens2([1,2,3,4,5,6]).
%%  {[1,3,5],[2,4,6]}

count_characters(Str) ->
  count_characters(Str, #{}).

count_characters([H|T], #{ H := N } = X) ->
  count_characters(T, X#{ H := N + 1 });
  count_characters([H|T], X) ->
    count_characters(T, X#{ H => 1});
    count_characters([], X) -> X.
