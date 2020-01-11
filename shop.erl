%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2020 3:10 PM
%%%-------------------------------------------------------------------
-module(shop).
-author("mark").

%% API
-export([cost/1]).

cost(oranges) -> 5;
cost(newspaper) -> 8;
cost(apples) -> 2;
cost(pears) -> 9;
cost(milk) -> 7.
