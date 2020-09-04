:- if((
    current_logtalk_flag(prolog_dialect, swi)
)).

	:- initialization((
		logtalk_load([ types(list)
		             ]),
	    use_module(library(http/http_server), []),
		logtalk_load([ http
		             , handler
					 ],
					 [optimize(on)])
	)).

:- else.
    :- initialization((
	    write('(this library requires SWI-Prolog as the backend compiler)'), nl
	)).
:- endif.