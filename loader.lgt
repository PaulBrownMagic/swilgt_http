:- if((
	current_logtalk_flag(prolog_dialect, swi)
)).

:- initialization((
	logtalk_load([
		basic_types(loader)
	]),
	use_module(library(http/http_server), []),
	logtalk_load([
		http,
		handler,
		request
	], [optimize(on)])
)).

:- else.

:- initialization((
	write('(this library requires SWI-Prolog as the backend compiler)'), nl
)).

:- endif.
