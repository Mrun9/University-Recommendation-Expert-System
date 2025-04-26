:- module(inference_engine, [
    process_recommendation/8
]).

:- use_module(rules).

% Main inference entry point
process_recommendation(GPA, GRE, TOEFL, Field, BTechMajor, ResearchExp, WorkExp, Recommendations) :-
    recommend_universities(GPA, GRE, TOEFL, Field, BTechMajor, ResearchExp, WorkExp, Recommendations).