%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Dec 2019 9:43 PM
%%%-------------------------------------------------------------------
-module(hello).
-author("mark").

%% API
-export([start/0]).

start() ->
  io:format("Hello World~n").


%% Compiles code
%%c(hello).
%% Execute function in a module
%%hello:start().

%% To run it on the command line. This is the preferred way since it's faster

%% $ erlc hello.erl
%% $ erl -noshell -s hello start -s init stop
