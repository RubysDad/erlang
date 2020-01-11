%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2020 2:52 PM
%%%-------------------------------------------------------------------
-module(geometry).
-author("mark").

%% API
-export([test/0, area/1]).

test() ->
  50 = area({rectangle, 10, 5}),
  25 = area({square, 5}),
  tests_passed.

area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side.

%%  1> c(geometry).
%%  {ok,geometry}
%%  2> geometry:test().
%%  tests_passed
