contributor(jonathan). role(jonathan, reweaver). sandbox(jonathan, kinoite_reweaver). care_mode(jonathan, true).
badge(head_held_high) :- fixed_head, created_orphan_branch.
badge(loom_repaired) :- has_ci_cd, passes_audit.
badge(loom_perfected) :- forall(badge(B), earned(B)).
has_ci_cd :- repo_configured, pipeline_present.
passes_audit :- badge(head_held_high), badge(loom_repaired).
earned(B) :- badge(B), contributor(C), role(C, R), badge_goal(C, B).
badge_goal(jonathan, head_held_high). badge_goal(jonathan, loom_repaired). badge_goal(jonathan, loom_perfected).
