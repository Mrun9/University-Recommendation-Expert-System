:- module(rules, [
    adjust_scores/6,
    eligible/9,
    recommend_universities/9
]).

:- use_module(knowledge_base).

% Score adjustment rules
adjust_scores(GPA, GRE, yes, _, AdjustedGPA, AdjustedGRE) :-
    AdjustedGPA is GPA + 0.2,
    AdjustedGRE is GRE + 5.

adjust_scores(GPA, GRE, _, yes, AdjustedGPA, AdjustedGRE) :-
    AdjustedGPA is GPA + 0.2,
    AdjustedGRE is GRE + 5.

adjust_scores(GPA, GRE, no, no, GPA, GRE).

% Eligibility rules
eligible(University, Program, Course, GPA, GRE, TOEFL, BTechMajor, ResearchExp, WorkExp) :-
    university_requirements(University, Program, Course, MinGPA, MinGRE, MinTOEFL, AllowedMajors, ResearchRequired, WorkRequired),
    adjust_scores(GPA, GRE, ResearchExp, WorkExp, NewGPA, NewGRE),
    NewGPA >= MinGPA,
    ( MinGRE == not_required -> true ; NewGRE >= MinGRE ),
    TOEFL >= MinTOEFL,
    member(BTechMajor, AllowedMajors),
    (ResearchRequired = no ; (ResearchRequired = yes, ResearchExp = yes)),
    (WorkRequired = no ; (WorkRequired = yes, WorkExp = yes)).

% Recommendation rules
recommend_universities(Program, Course, BTechMajor, GPA, GRE, TOEFL, ResearchExp, WorkExp, Recommendations) :-
    % Safe universities
    (   setof(U, (eligible(U, Program, Course, GPA, GRE, TOEFL, BTechMajor, ResearchExp, WorkExp), 
                  safe_university(U)), SafeList) 
    ->  true 
    ;   SafeList = []),
    
    % Target universities
    (   setof(U, (eligible(U, Program, Course, GPA, GRE, TOEFL, BTechMajor, ResearchExp, WorkExp), 
                  target_university(U),
                  \+ member(U, SafeList)), TargetList) 
    ->  true 
    ;   TargetList = []),
    
    % Ambitious universities
    (   setof(U, (eligible(U, Program, Course, GPA, GRE, TOEFL, BTechMajor, ResearchExp, WorkExp), 
                  ambitious_university(U),
                  \+ member(U, SafeList),
                  \+ member(U, TargetList)), AmbitiousList) 
    ->  true 
    ;   AmbitiousList = []),
    
    Recommendations = _{safe: SafeList, target: TargetList, ambitious: AmbitiousList}.
