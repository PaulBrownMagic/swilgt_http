:- object(http).

    :- info([ version is 1:0:0
	        , author is 'Paul Brown'
			, date is 2020-09-02
			, comment is 'An interface to the SWI-Prolog library(http/http_server)']).

    :- use_module(http_server, [ http_server/1
	                           , http_reply_file/3
							   , http_current_request/1
							   , http_dispatch/1
							   , http_stop_server/2
							   , http_server_property/2
							   , http_reload_with_parameters/3
							   , http_current_handler/2
							   , reply_json_dict/1 as http_reply_json_dict/1
							   , reply_json_dict/2 as http_reply_json_dict/2
							   , http_request_expansion/2
							   , http_spawn/2
							   , http_current_server/2
							   , http_read_json_dict/2
							   , http_read_json_dict/3
							   , http_link_to_id/3
							   , http_switch_protocol/2
							   , http_404/2
							   , http_delete_handler/1
							   , http_add_worker/2
							   , http_workers/2
							   , is_json_content_type/1 as http_is_json_content_type/1
							   , http_location_by_id/2
							   , http_parameters/2
							   , http_parameters/3
							   , http_redirect/3
							   , http_handler/3
							   , html_meta/1
							   , http_current_worker/2
							   , reply_html_page/2 as http_reply_html_page/2
							   , reply_html_page/3 as http_reply_html_page/3
							   , http_peer/2
							   ]).


   :- public(server/1). server(Options) :- http_server(Options).
   :- public(reply_file/3). reply_file(FileSpec, Options, Request) :- http_reply_file(FileSpec, Options, Request).
   :- public(current_request/1). current_request(Request) :- http_current_request(Request).
   :- public(dispatch/1). dispatch(Request) :- http_dispatch(Request).
   :- public(stop_server/2). stop_server(Port, Options) :- http_stop_server(Port, Options).
   :- public(server_property/2). server_property(Port, Property) :- http_server_property(Port, Property).
   :- public(read_json_dict/2). read_json_dict(Request, Dict) :- {http_read_json_dict(Request, Dict)}.
   :- public(read_json_dict/3). read_json_dict(Request, Dict, Options) :- {http_read_json_dict(Request, Dict, Options)}.
   :- public(reload_with_parameters/3). reload_with_parameters(Request, Parameters, HREF) :- http_reload_with_parameters(Request, Parameters, HREF).
   :- public(reply_json_dict/1). reply_json_dict(JSONDict) :- http_reply_json_dict(JSONDict).
   :- public(reply_json_dict/2). reply_json_dict(JSONDict, Options) :- http_reply_json_dict(JSONDict, Options).
   :- meta_predicate(request_expansion(*, *)).
   :- public(request_expansion/2). request_expansion(Goal, Rank) :- http_request_expansion(Goal, Rank).
   :- meta_predicate(spawn(*, *)).
   :- public(spawn/2). spawn(Goal, Options) :- http_spawn(Goal, Options).
   :- meta_predicate(current_server(*, *)).
   :- public(current_server/2). current_server(Goal, Port) :- http_current_server(Goal, Port).
   :- public(link_to_id/3). link_to_id(HandleID, Parameters, HREF) :- http_link_to_id(HandleID, Parameters, HREF).
   :- meta_predicate(switch_protocol(*, *)).
   :- public(switch_protocol/2). switch_protocol(Goal, Options) :- http_switch_protocol(Goal, Options).
   :- public('404'/2). '404'(Options, Request) :- http_404(Options, Request).
   :- public(delete_handler/1). delete_handler(Spec) :- http_delete_handler(Spec).
   :- public(add_worker/2). add_worker(Port, Options) :- http_add_worker(Port, Options).
   :- public(workers/2). workers(Port, Workers) :- http_workers(Port, Workers).
   :- public(is_json_content_type/1). is_json_content_type(ContentType) :- http_is_json_content_type(ContentType).
   :- public(location_by_id/2). location_by_id(ID, Location) :- http_location_by_id(ID, Location).
   :- public(parameters/2). parameters(Request, Params) :- http_parameters(Request, Params).
   :- meta_predicate(http_server:http_parameters(*, *, *)). :- meta_predicate(parameters(*, *, *)).
   :- public(parameters/3). parameters(Request, Params, Options) :- {http_parameters(Request, Params, Options)}.
   :- public(redirect/3). redirect(How, To, Request) :- http_redirect(How, To, Request).
   :- meta_predicate(http_server:http_handler(*, 1, *)). :- meta_predicate(handler(*, 1, *)).
   :- public(handler/3). handler(Path, Handler, Options) :- http_handler(Path, Handler, Options).
   :- public(meta/1). meta(Heads) :- html_meta(Heads).
   :- public(current_worker/2). current_worker(Port, ThreadID) :- http_current_worker(Port, ThreadID).
   :- meta_predicate(http_server:reply_html_page(*, *)). :- meta_predicate(reply_html_page(*, *)).
   :- public(reply_html_page/2). reply_html_page(A, B) :- http_reply_html_page(A, B).
   :- meta_predicate(http_server:reply_html_page(*, *, *)). :- meta_predicate(reply_html_page(*, *, *)).
   :- public(reply_html_page/3). reply_html_page(A, B, C) :- http_reply_html_page(A, B, C).
   :- meta_predicate(http_server:http_current_handler(1, *)). :- meta_predicate(current_handler(1, *)).
   :- public(current_handler/2). current_handler(Location, Closure) :- http_current_handler(Location, Closure).
   :- public(peer/2). peer(Request, PeerIP) :- http_peer(Request, PeerIP).

:- end_object.
