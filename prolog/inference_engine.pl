:- module(inference_engine, [
    process_recommendation/9
]).

:- use_module(rules).

% Main inference entry point
process_recommendation(Program, Course, BTechMajor, GPA, GRE, TOEFL, ResearchExp, WorkExp, Recommendations) :-
    recommend_universities(Program, Course, BTechMajor, GPA, GRE, TOEFL, ResearchExp, WorkExp, Recommendations).
