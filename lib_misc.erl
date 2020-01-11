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
-export([for/3]).

%% creating our own custom for loop

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I)|for(I+1, Max, F)].

%%  lib_misc:for(1, 10, F).
%%   => [F(1), F(2), ...F(10)]

%%  lib_misc:for(1, 10, fun(I) -> I end).
%%  => [1,2,3,4,5,6,7,8,9,10]

%%  4> lib_misc:for(1, 10, fun(I) -> I*I end).
%%  [1,4,9,16,25,36,49,64,81,100]

