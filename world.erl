%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Dec 2019 3:19 PM
%%%-------------------------------------------------------------------
-module(world).

%% API
-export([start/0]).

start() ->
  Mark = spawn(person, init, ["Mark"]),
  Tabitha = spawn(person, init, ["Tabitha"]),
  Felix = spawn(person, init, ["Felix"]),
  Ruby = spawn(person, init, ["Ruby"]),
  Aurora = spawn(person, init, ["Aurora"]),
  Rover = spawn(dog, init, ["Rover"]),
  Rabbit1 = spawn(dog, init, ["Rabbit1"]),
  Rabbit2 = spawn(dog, init, ["Rabbit1"]).
