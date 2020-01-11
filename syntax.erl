%%%-------------------------------------------------------------------
%%% @author mark
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Dec 2019 9:30 PM
%%%-------------------------------------------------------------------
-module(syntax).
-author("mark").

%% API
-export([]).

%% Binding the variable to a value
X = 123

%% In Erlang you can't rebind values! Once they are set they are frozen and constant forever

%%Variables start with an upper case letter

%% Names beginning with with lowercase letters are Atoms

%% Atoms are symbolic constants

%% Compiles code
%%c(hello).
%% Execute function in a module
%%hello:start().

%%Tuples, lists and pattern matching

%%  1> Mark = {man, 27}.
%%  {man,27}
%%  2> {_,age} = Mark.
%%  ** exception error: no match of right hand side value {man,27}
%%  3> {_,Age} = Mark.
%%  {man,27}
%%  4> Age
%%  4> .
%%  27
%%  5> Person = {person, {name, joe}, {height, 5.7}, {footsize, 11}, {eyecolor, brown}}.
%%  {person,{name,joe},
%%  {height,5.7},
%%  {footsize,11},
%%  {eyecolor,brown}}
%%  6> {_, {_,_}, {_, Height}, {_, _}, {_, Eyecolor}}.
%%  * 1: variable '_' is unbound
%%  7> {_, {_, _}, {_, Height}, {_, _}, {_, Eyecolor}}.
%%  * 1: variable '_' is unbound
%%  8> {_, {_, _}, {_, Height}, {_, _}, {_, Eyecolor}} = Person.
%%  {person,{name,joe},
%%  {height,5.7},
%%  {footsize,11},
%%  {eyecolor,brown}}
%%  9> Height.
%%  5.7
%%  10> Eyecolor.
%%  brown
%%  11> {_, Name}, {_, _}, {_, Footsize}, {_, _}} = Person.
%%  * 1: syntax error before: '}'
%%  11> {_, {_, Name}, {_, _}, {_, Footsize}, {_, _}} = Person.
%%  {person,{name,joe},
%%  {height,5.7},
%%  {footsize,11},
%%  {eyecolor,brown}}
%%  12> Footsize
%%  12> .
%%  11
%%  13> Name.
%%  joe
%%  14> Tabitha = [{height, 5.4}, {eyecolor, "blue"}]
%%  14> .
%%  [{height,5.4},{eyecolor,"blue"}]
%%  15> [H|t] = Wife.
%%  * 1: variable 'Wife' is unbound
%%  16> [H|t] = Tabitha.
%%  ** exception error: no match of right hand side value [{height,5.4},{eyecolor,"blue"}]
%%  17> Tabitha2 = [{sex, "YES"}, {funny, "true"}|Tabitha].
%%  [{sex,"YES"},{funny,"true"},{height,5.4},{eyecolor,"blue"}]
%%  18> Tabitha2
%%  18> .
%%  [{sex,"YES"},{funny,"true"},{height,5.4},{eyecolor,"blue"}]
%%  19> [Sex|Tabitha3] = Tabitha2.
%%  [{sex,"YES"},{funny,"true"},{height,5.4},{eyecolor,"blue"}]
%%  20> Sex.
%%  {sex,"YES"}
%%  21> Tabitha3
%%  21> .
%%  [{funny,"true"},{height,5.4},{eyecolor,"blue"}]
%%  22> [FunnyHeight|Eyes] = Tabitha3.
%%  [{funny,"true"},{height,5.4},{eyecolor,"blue"}]
%%  23> FunnyHeight.
%%  {funny,"true"}
%%  24> Tabitha4 = [{style, "beautiful"}|Tabitha3].
%%  [{style,"beautiful"},
%%  {funny,"true"},
%%  {height,5.4},
%%  {eyecolor,"blue"}]
%%  25> Tabitha4
%%  25> .
%%  [{style,"beautiful"},
%%  {funny,"true"},
%%  {height,5.4},
%%  {eyecolor,"blue"}]
%%  26> [Style, Funny|Tabitha5] = Tabitha4.
%%  [{style,"beautiful"},
%%  {funny,"true"},
%%  {height,5.4},
%%  {eyecolor,"blue"}]
%%  27> Style
%%  27> .
%%  {style,"beautiful"}
%%  28> Funny.
%%  {funny,"true"}
%%  29> Tabitha5.
%%  [{height,5.4},{eyecolor,"blue"}]


%% Funs - anonymous functions

%% arity is the number of arguments a function
%%accepts.

%%  1> Double = fun(X) -> 2*X end.
%%  #Fun<erl_eval.7.126501267>
%%  2> Double(2).
%%  4
%%  3> Hypot = fun(X, Y) -> math:sqrt(X*X + Y*Y) end.
%%  #Fun<erl_eval.13.126501267>
%%  4> Hypot(3,4).
%%  5.0
%%  5> Hypot(3).
%%  ** exception error: interpreted function with arity 2 called with one argument
%%  6> TempConvert = fun({c, C}) -> {f, 32 + C*9/5};
%%  6> ({f,F}) -> {c, (F-32)*5/9}
%%  6> end.
%%  #Fun<erl_eval.7.126501267>
%%  7> TempConvert({c, 100}).
%%  {f,212.0}


