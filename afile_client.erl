%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Dec 2019 9:53 PM
%%%-------------------------------------------------------------------
-module(afile_client).
-author("mark").

%% API
-export([list/1, get_file/2]).

list(Server) ->
  Server ! {self(), list_dir},
  receive
    {Server, Filelist} ->
      Filelist
  end.

get_file(Server, File) ->
  Server ! {self(), get_file, File},
  receive
    {Server, Content} ->
      Content
  end.
