:- consult(badge_logic).
:- consult(kanren_facts).
run_badge_trace(Repo) :-
    ( fixed_head, created_orphan_branch -> assertz(badge(head_held_high, Repo)) ; true ),
    ( has_ci_cd, passes_audit -> assertz(badge(loom_repaired, Repo)) ; true ),
    ( forall(badge(B), earned(B)) -> assertz(badge(loom_perfected, Repo)) ; true ),
    badge(Badge, Repo),
    format('{"repo": "~q", "badge": "~q"}~n', [Repo, Badge]).
