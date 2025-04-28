:- module(http_interface, [
    start_server/0,
    handle_recommend/1
]).

:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_parameters)).
:- use_module(library(http/http_json)).
:- use_module(library(http/http_cors)).
:- use_module(inference_engine).

% Enable CORS for all routes
:- set_setting(http:cors, [*]).

% Start server
start_server :-
    http_server(http_dispatch, [port(8080)]).

% Handler for recommendations
:- http_handler(root(recommend), handle_recommend, [methods([get, options])]).

handle_recommend(Request) :-
    cors_enable,
    (   member(method(options), Request)
    ->  true
    ;   http_parameters(Request, [
            program(Program, [atom]),
            course(Course, [atom]),
            btech_major(Major, [atom]),
            gpa(GPA, [float]),
            gre(GRE, [integer]),
            toefl(TOEFL, [integer]),
            research_done(Research, [atom]),
            work_experience(Work, [atom])
        ]),
        process_recommendation(Program, Course, Major, GPA, GRE, TOEFL, Research, Work, Result),
        reply_json(Result)
    ).
