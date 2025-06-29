-module(openapi_statem).

-behaviour(proper_statem).

-include("openapi.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("openapi_statem.hrl").

%%==============================================================================
%% The statem's property
%%==============================================================================

prop_main() ->
  setup(),
  ?FORALL( Cmds
         , proper_statem:commands(?MODULE)
         , begin
             cleanup(),
             { History
             , State
             , Result
             } = proper_statem:run_commands(?MODULE, Cmds),
             ?WHENFAIL(
                io:format("History: ~p\nState: ~p\nResult: ~p\nCmds: ~p\n",
                          [ History
                          , State
                          , Result
                          , proper_statem:command_names(Cmds)
                          ]),
                proper:aggregate( proper_statem:command_names(Cmds)
                                , Result =:= ok
                                )
               )
           end
         ).

%%==============================================================================
%% Setup
%%==============================================================================

setup() -> ok.

%%==============================================================================
%% Cleanup
%%==============================================================================

cleanup() -> ok.

%%==============================================================================
%% Initial State
%%==============================================================================

initial_state() -> #{}.

%%==============================================================================
%% v1_trades_latest_get
%%==============================================================================

v1_trades_latest_get() ->
  openapi_api:v1_trades_latest_get().

v1_trades_latest_get_args(_S) ->
  [].

%%==============================================================================
%% v1_trades_symbol_id_history_get
%%==============================================================================

v1_trades_symbol_id_history_get(SymbolId) ->
  openapi_api:v1_trades_symbol_id_history_get(SymbolId).

v1_trades_symbol_id_history_get_args(_S) ->
  [binary()].

%%==============================================================================
%% v1_trades_symbol_id_latest_get
%%==============================================================================

v1_trades_symbol_id_latest_get(SymbolId) ->
  openapi_api:v1_trades_symbol_id_latest_get(SymbolId).

v1_trades_symbol_id_latest_get_args(_S) ->
  [binary()].

