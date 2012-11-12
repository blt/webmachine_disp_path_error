%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the disp_path application.

-module(disp_path_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for disp_path.
start(_Type, _StartArgs) ->
    disp_path_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for disp_path.
stop(_State) ->
    ok.
