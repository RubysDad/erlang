%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2020 3:12 PM
%%%-------------------------------------------------------------------
-module(shop_total).
-author("mark").

%% API
-export([total/1]).
-import(lists, [map/2, sum/1]).
%% lists is the module and map and sum are the functions

%%  total([{What, Number}| T]) -> shop:cost(What) * Number + total(T);
%%  total([]) -> 0.

%%  1> c(shop).
%%  {ok,shop}
%%  2> c(shop_total).
%%  {ok,shop_total}
%%  3> shop_total:total([{milk, 3}]).
%%  21
%%  4>
%%  4> shop_total:total([{pears, 6}, {milk, 3}]).
%%  75
%%  5>
%%  5> shop_total:total(Buy).
%%  * 2: variable 'Buy' is unbound
%%  6>
%%  6> shop_total:total("Buy").
%%  ** exception error: no function clause matching shop_total:total("Buy") (shop_total.erl, line 15)
%%  7>
%%  7> shop_total:total([Buy}).
%%  * 2: syntax error before: '}'
%%  7>
%%  7> shop_total:total([Buy]).
%%  * 2: variable 'Buy' is unbound
%%  8>
%%  8> shop_total:total(Buy).
%%  * 2: variable 'Buy' is unbound
%%  9>
%%  9> Buy = [{oranges, 4], {newspaper,1}, {apples,10}, {pears,6}, {milk,3}].
%%  * 2: syntax error before: ']'
%%  9> Buy = [{oranges,4}, {newspaper,1}, {apples,10}, {pears,6}, {milk,3}].
%%  [{oranges,4},{newspaper,1},{apples,10},{pears,6},{milk,3}]
%%  10> shop_total:total(Buy).
%%  123

%%  With the other modules we can rewrite total to be:

total(L) ->
  sum(map(fun({What, N}) -> shop:cost(What) * N end, L)).

%%  11> Buy = [{oranges, 4}, {newspaper, 1}, {apples, 10}, {pears, 6}, {milk, 3}].
%%  [{oranges,4},{newspaper,1},{apples,10},{pears,6},{milk,3}]
%%  12> L1 = lists:map(fun({What, N}) -> shop:cost(What) * N end, Buy).
%%  [20,8,20,54,21]
%%  13> lists:sum(L1).
%%  123

