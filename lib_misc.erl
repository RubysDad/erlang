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
-export([for/3,
         odds_and_evens2/1,
%%         count_characters/1,
         sqrt/1,
         demo/0,
         generate_exception/1]).

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

%%count_characters(Str) ->
%%  count_characters(Str, #{}).
%%
%%count_characters([H|T], #{ H := N } = X) ->
%%  count_characters(T, X#{ H := N + 1 });
%%  count_characters([H|T], X) ->
%%    count_characters(T, X#{ H => 1});
%%    count_characters([], X) -> X.

%% Improving the quality of error messages:
sqrt(X) when X < 0 ->
  error({squareRootNegativeArgument, X});
sqrt(X) ->
  math:sqrt(X).

%% To catch all errors:
%% try Expr
%% catch
%%   _:_ -> ... Code to handle all exceptions
%% end

generate_exception(5) -> error(a).

%% To get a stacktrace
demo() ->
  try generate_exception(5)
  catch
    error:X ->
      {X, erlang:get_stacktrace()}
  end.

%%  3> lib_misc:demo().
%%  {a,[{lib_misc,generate_exception,1,
%%  [{file,"lib_misc.erl"},{line,78}]},
%%  {lib_misc,demo,0,[{file,"lib_misc.erl"},{line,81}]},
%%  {erl_eval,do_apply,6,[{file,"erl_eval.erl"},{line,684}]},
%%  {shell,exprs,7,[{file,"shell.erl"},{line,686}]},
%%  {shell,eval_exprs,7,[{file,"shell.erl"},{line,642}]},
%%  {shell,eval_loop,3,[{file,"shell.erl"},{line,627}]}]}

