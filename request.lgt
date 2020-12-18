:- object(request(_Request_)).

	:- info([
		version is 1:0:0,
		author is 'Paul Brown',
		date is 2020-12-17,
		comment is 'Access to the Request attributes.'
	]).

	:- uses(list, [
		member/2
	]).

	:- public(session/1).
	:- mode(session(?atom), one).
	:- info(session/1, [
		argnames is ['Session']
	]).
    session(Session) :-
		member(session(Session), _Request_), !.

	:- public(protocol/1).
	:- mode(protocol(?atom), one).
	:- info(protocol/1, [
		argnames is ['Protocol']
	]).
    protocol(Protocol) :-
		member(protocol(Protocol), _Request_), !.

	:- public(peer/1).
	:- mode(peer(?term), one).
	:- info(peer/1, [
		argnames is ['Peer']
	]).
    peer(Peer) :-
		member(peer(Peer), _Request_), !.

	:- public(pool/1).
	:- mode(pool(?term), one).
	:- info(pool/1, [
		argnames is ['Pool']
	]).
    pool(Pool) :-
		member(pool(Pool), _Request_), !.

	:- public(input/1).
	:- mode(input(?stream), one).
	:- info(input/1, [
		argnames is ['Stream']
	]).
    input(Stream) :-
		member(input(Stream), _Request_), !.

	:- public(method/1).
	:- mode(method(?atom), one).
	:- info(method/1, [
		argnames is ['Method']
	]).
    method(Method) :-
		member(method(Method), _Request_), !.

	:- public(request_uri/1).
	:- mode(request_uri(?atom), one).
	:- info(request_uri/1, [
		argnames is ['URI']
	]).
    request_uri(URI) :-
		member(request_uri(URI), _Request_), !.

	:- public(path/1).
	:- mode(path(?atom), one).
	:- info(path/1, [
		argnames is ['Path']
	]).
    path(Path) :-
		member(path(Path), _Request_), !.

	:- public(http_version/1).
	:- mode(http_version(?atom), one).
	:- info(http_version/1, [
		argnames is ['Http_version']
	]).
	http_version(Http_version) :-
		member(http_version(Http_version), _Request_), !.

	:- public(host/1).
	:- mode(host(?atom), one).
	:- info(host/1, [
		argnames is ['Host']
	]).
	host(Host) :-
		member(host(Host), _Request_), !.

	:- public(port/1).
	:- mode(port(?atom), one).
	:- info(port/1, [
		argnames is ['Port']
	]).
	port(Port) :-
		member(port(Port), _Request_), !.

	:- public(connection/1).
	:- mode(connection(?atom), one).
	:- info(connection/1, [
		argnames is ['Connection']
	]).
	connection(Connection) :-
		member(connection(Connection), _Request_), !.

	:- public(cache_control/1).
	:- mode(cache_control(?atom), one).
	:- info(cache_control/1, [
		argnames is ['Cache_control']
	]).
	cache_control(Cache_control) :-
		member(cache_control(Cache_control), _Request_), !.

	:- public(upgrade_insecure_requests/1).
	:- mode(upgrade_insecure_requests(?atom), one).
	:- info(upgrade_insecure_requests/1, [
		argnames is ['Upgrade_insecure_requests']
	]).
	upgrade_insecure_requests(Upgrade_insecure_requests) :-
		member(upgrade_insecure_requests(Upgrade_insecure_requests), _Request_), !.

	:- public(user_agent/1).
	:- mode(user_agent(?atom), one).
	:- info(user_agent/1, [
		argnames is ['User_agent']
	]).
	user_agent(User_agent) :-
		member(user_agent(User_agent), _Request_), !.

	:- public(accept/1).
	:- mode(accept(?atom), one).
	:- info(accept/1, [
		argnames is ['Accept']
	]).
	accept(Accept) :-
		member(accept(AcceptAll), _Request_),
		!,
		member(Accept, AcceptAll).

	:- public(sec_fetch_site/1).
	:- mode(sec_fetch_site(?atom), one).
	:- info(sec_fetch_site/1, [
		argnames is ['Sec_fetch_site']
	]).
	sec_fetch_site(Sec_fetch_site) :-
		member(sec_fetch_site(Sec_fetch_site), _Request_), !.

	:- public(sec_fetch_mode/1).
	:- mode(sec_fetch_mode(?atom), one).
	:- info(sec_fetch_mode/1, [
		argnames is ['Sec_fetch_mode']
	]).
	sec_fetch_mode(Sec_fetch_mode) :-
		member(sec_fetch_mode(Sec_fetch_mode), _Request_), !.

	:- public(sec_fetch_user/1).
	:- mode(sec_fetch_user(?atom), one).
	:- info(sec_fetch_user/1, [
		argnames is ['Sec_fetch_user']
	]).
	sec_fetch_user(Sec_fetch_user) :-
		member(sec_fetch_user(Sec_fetch_user), _Request_), !.

	:- public(sec_fetch_dest/1).
	:- mode(sec_fetch_dest(?atom), one).
	:- info(sec_fetch_dest/1, [
		argnames is ['Sec_fetch_dest']
	]).
	sec_fetch_dest(Sec_fetch_dest) :-
		member(sec_fetch_dest(Sec_fetch_dest), _Request_), !.

	:- public(accept_encoding/1).
	:- mode(accept_encoding(?atom), one).
	:- info(accept_encoding/1, [
		argnames is ['Accept_encoding']
	]).
	accept_encoding(Accept_encoding) :-
		member(accept_encoding(Accept_encoding), _Request_), !.

	:- public(accept_language/1).
	:- mode(accept_language(?atom), one).
	:- info(accept_language/1, [
		argnames is ['Accept_language']
	]).
	accept_language(Accept_language) :-
		member(accept_language(Accept_language), _Request_), !.

	:- public(cookie/1).
	:- mode(cookie(?atom), one).
	:- info(cookie/1, [
		argnames is ['Cookie']
	]).
	cookie(Cookie) :-
		member(cookie(Cookie), _Request_), !.

:- end_object.
