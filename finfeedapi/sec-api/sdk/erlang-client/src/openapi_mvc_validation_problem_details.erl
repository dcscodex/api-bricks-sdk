-module(openapi_mvc_validation_problem_details).

-export([encode/1]).

-export_type([openapi_mvc_validation_problem_details/0]).

-type openapi_mvc_validation_problem_details() ::
    #{ 'type' => binary(),
       'title' => binary(),
       'status' => integer(),
       'detail' => binary(),
       'instance' => binary(),
       'errors' => maps:map()
     }.

encode(#{ 'type' := Type,
          'title' := Title,
          'status' := Status,
          'detail' := Detail,
          'instance' := Instance,
          'errors' := Errors
        }) ->
    #{ 'type' => Type,
       'title' => Title,
       'status' => Status,
       'detail' => Detail,
       'instance' => Instance,
       'errors' => Errors
     }.
