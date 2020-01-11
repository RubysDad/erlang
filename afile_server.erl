%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Dec 2019 9:53 PM
%%%-------------------------------------------------------------------
-module(afile_server).
-author("mark").

%% API
-export([start/1, loop/1]).

start(Dir) -> spawn(afile_server, loop, [Dir]).

loop(Dir) ->
  receive
    {Client, list_dir} ->
      Client ! {self(), file:list_dir(Dir)};
    {Client, {get_file, File}} ->
      Full = filename:join(Dir, File),
      Client ! {self(), file:read_file(Full)}
  end,
  loop(Dir).

%% Variable Dir contains the current working directory of the file server
%% Client is the PID of the process that sent the request and to whom the reply should be sent
%% self() is the PID of the server. self is added to the message so the client knows that the response came back from the server and not from somewhere else

%%1> c(afile_server).
%%{ok,afile_server}
%%2> FileServer = afile_server:start(".").
%%<0.85.0> PID of file server process
%%3> FileServer ! {self(), list_dir}.
%%{<0.78.0>,list_dir} process of Erlang shell itself
%%4> receive X -> X end.
%%{<0.85.0>,
%%{ok,["hello.erl","afile_client.erl","afile_server.beam",
%%"world.erl","dog.erl","syntax.erl","rabbit.erl",
%%"hello.beam","person.erl","afile_server.erl",".idea"]}}
