;; STATE.scm - GitLoom Project State
;; Checkpoint/restore system for AI conversation continuity
;; Format: Guile Scheme (human-readable, homoiconic)

(define-module (gitloom state)
  #:export (state))

;; ============================================================================
;; METADATA
;; ============================================================================

(define metadata
  '((format-version . "1.0.0")
    (created . "2025-12-08")
    (last-updated . "2025-12-08")
    (project . "GitLoom")
    (repository . "hyperpolymath/gitloom")))

;; ============================================================================
;; PROJECT CONTEXT
;; ============================================================================

(define project-context
  '((name . "GitLoom")
    (tagline . "Portfolio governance through symbolic attestation")
    (description . "A multi-language system for declaring unified standards across
                    repositories and enforcing them locally and remotely through
                    badge-based compliance, ritual orchestration, and Prolog logic")
    (license . ("MIT" "Palimpsest v0.8"))
    (tech-stack . (("system" . "Ada/GNAT 13.x")
                   ("config" . "Nickel")
                   ("logic" . "SWI-Prolog 9.x")
                   ("api" . "Elixir/Phoenix 1.7")
                   ("cli" . "Rust 2021")
                   ("build" . "Just")
                   ("container" . "Podman/Docker")))))

;; ============================================================================
;; CURRENT POSITION (~20% complete)
;; ============================================================================

(define current-position
  '((overall-completion . 20)
    (phase . "early-prototype")
    (status . "in-progress")

    (what-exists
      ((component . "build-system")
       (status . "functional")
       (details . "Just-based task orchestration working"))

      ((component . "ada-tools")
       (status . "compiles-but-stubbed")
       (details . "diagnose, badge, parsers, emitters compile but most return stubs"))

      ((component . "config-framework")
       (status . "functional")
       (details . "Nickel loom.mittens.ncl parsing and normalization works"))

      ((component . "logic-framework")
       (status . "works-but-hardcoded")
       (details . "Prolog badge_logic.pl evaluates but kanren_facts.pl is hardcoded"))

      ((component . "batch-auditor")
       (status . "most-complete")
       (details . "Rust auditor scores repos against badge criteria (236 LOC)"))

      ((component . "graphql-api")
       (status . "basic-structure")
       (details . "Phoenix/Absinthe routing exists, minimal resolver implementation"))

      ((component . "docker-support")
       (status . "functional")
       (details . "Podmanfile builds complete environment")))

    (what-is-missing
      "Dynamic repository analysis (facts are hardcoded)"
      "Actual diagnostic implementations (most are stubs)"
      "Fix/remediation capability (mentioned but not coded)"
      "Remote sync/push mechanism"
      "Integration tests"
      "Documentation"
      "Authentication for API")))

;; ============================================================================
;; ROUTE TO MVP v1
;; ============================================================================

(define mvp-v1-route
  '((goal . "Working end-to-end audit and badge system for local repositories")
    (target-completion . 60)

    (milestones
      ((id . "M1")
       (name . "Fix Critical Blockers")
       (completion . 0)
       (tasks
         ("Fix Cargo.toml edition: 2024 -> 2021"
          "Fix hardcoded paths in resolvers.ex and main.rs"
          "Create missing ui/assets/ directory for overlay emitter")))

      ((id . "M2")
       (name . "Implement Real Diagnostics")
       (completion . 0)
       (tasks
         ("Implement Check_Repo_Mirroring in diagnose.adb"
          "Implement Check_CI_CD_Presence (look for .github/workflows, .gitlab-ci.yml)"
          "Implement Check_Badge_Logic (actually evaluate Prolog)"
          "Implement Check_Contributor_Config (validate Nickel structure)"
          "Remove stub success returns, add real validation")))

      ((id . "M3")
       (name . "Dynamic Fact Generation")
       (completion . 0)
       (tasks
         ("Implement KanrenGenerator.ex to analyze real repos"
          "Generate Prolog facts from file presence analysis"
          "Generate facts from git history (fixed_head, created_orphan_branch)"
          "Support multiple repositories in kanren_facts.pl")))

      ((id . "M4")
       (name . "Badge Evaluation Pipeline")
       (completion . 30)
       (tasks
         ("Connect batch-auditor output to Prolog facts"
          "Verify badge_logic.pl rules work with dynamic facts"
          "Generate human-readable badge report"
          "Emit badge overlay JSON for UI consumption")))

      ((id . "M5")
       (name . "Basic Documentation")
       (completion . 0)
       (tasks
         ("Write README.adoc with setup instructions"
          "Document badge criteria and earning conditions"
          "Document configuration format (loom.mittens.ncl)"
          "Add examples for common workflows"))))))

;; ============================================================================
;; KNOWN ISSUES
;; ============================================================================

(define issues
  '((critical
      ((id . "I1")
       (title . "Invalid Cargo.toml Edition")
       (description . "edition = '2024' is invalid; valid editions are 2015, 2018, 2021")
       (file . "batch-auditor/Cargo.toml")
       (impact . "Batch auditor won't compile")
       (fix . "Change edition to '2021'"))

      ((id . "I2")
       (title . "Hardcoded Absolute Paths")
       (description . "Paths like '/var/home/hyper/workspace/projects/' hardcoded")
       (files . ("batch-auditor/src/main.rs" "audit/lib/loom_audit/resolvers.ex"))
       (impact . "Won't work outside original developer's machine")
       (fix . "Use environment variables or config file"))

      ((id . "I3")
       (title . "Stubbed Diagnostic Implementations")
       (description . "Most checks in diagnose.adb print success without validation")
       (file . "ada/src/diagnose.adb")
       (impact . "False confidence - diagnostics lie")
       (fix . "Implement actual validation logic")))

    (major
      ((id . "I4")
       (title . "Hardcoded Prolog Facts")
       (description . "kanren_facts.pl contains only gitloom-specific hardcoded facts")
       (file . "logic/kanren_facts.pl")
       (impact . "Logic doesn't adapt to different repositories"))

      ((id . "I5")
       (title . "Missing Output Directory")
       (description . "loom_overlay_emitter.adb writes to ui/assets/ which doesn't exist")
       (file . "ada/src/loom_overlay_emitter.adb")
       (impact . "Overlay emission fails"))

      ((id . "I6")
       (title . "No Fix/Remediation Implementation")
       (description . "Help mentions 'gitloom fix --dry-run' but not implemented")
       (impact . "Core advertised feature missing"))

      ((id . "I7")
       (title . "No Authentication on GraphQL API")
       (description . "Port 4000 HTTPS open to anyone")
       (file . "audit/lib/loom_audit/router.ex")
       (impact . "Security risk if exposed")))

    (minor
      ((id . "I8")
       (title . "Empty README Files")
       (description . "README.md empty, README.adoc has TODO placeholder")
       (impact . "No onboarding documentation"))

      ((id . "I9")
       (title . "No Integration Tests")
       (description . "Components untested in combination")
       (impact . "Unknown whether parts work together")))))

;; ============================================================================
;; QUESTIONS FOR MAINTAINER
;; ============================================================================

(define questions
  '((architecture
      ((q . "Q1: Badge Earning Persistence")
       (context . "Currently badges computed but not persisted")
       (question . "Should earned badges be stored in a file (badges.json),
                    database, or computed fresh each audit?"))

      ((q . "Q2: Multi-Repository Configuration")
       (context . "batch-auditor has hardcoded repo paths")
       (question . "How should target repositories be specified?
                    Options: config file, CLI args, environment variable,
                    or scan a workspace directory?"))

      ((q . "Q3: Remote Sync Mechanism")
       (context . "Brief mentions 'enforce locally AND remotely'")
       (question . "What does remote enforcement look like?
                    GitHub Actions? Pre-push hooks? API calls to hosted service?")))

    (scope
      ((q . "Q4: MVP User")
       (context . "Config hardcoded to 'Jonathan' contributor")
       (question . "Is MVP single-user (you) or should it support multiple
                    contributors from the start?"))

      ((q . "Q5: Which Badges Are Priority?")
       (context . "Multiple badge systems: head_held_high, loom_repaired,
                   Dependable, Secure, Interoperable, Governed, Rhodium")
       (question . "Which badge set should MVP focus on? The Prolog ones or
                    the batch-auditor ones? Should they merge?"))

      ((q . "Q6: Fix Implementation Priority")
       (context . "'gitloom fix' mentioned but not implemented")
       (question . "Is auto-fix a must-have for MVP or can V1 be audit-only
                    with manual remediation?")))

    (technical
      ((q . "Q7: Prolog vs Rust Logic")
       (context . "Badge logic exists in both Prolog (badge_logic.pl) and
                   Rust (batch-auditor scoring)")
       (question . "Should these unify? Which is source of truth?"))

      ((q . "Q8: GraphQL API Purpose")
       (context . "Phoenix/Absinthe API exists but unclear use case")
       (question . "Is the API for a web UI, CI/CD integration, or
                    something else? What clients will consume it?"))

      ((q . "Q9: Container vs Native")
       (context . "Podmanfile exists for full environment")
       (question . "Is containerized execution the primary mode, or should
                    native installation be equally supported?")))))

;; ============================================================================
;; LONG-TERM ROADMAP
;; ============================================================================

(define roadmap
  '((v1.0-mvp
      (name . "Local Audit & Badge MVP")
      (target-completion . 60)
      (features
        "Working diagnostic checks (non-stubbed)"
        "Dynamic Prolog fact generation from repos"
        "Badge earning and reporting"
        "Basic documentation"
        "Single-user local operation")
      (out-of-scope
        "Remote sync"
        "Auto-fix"
        "Multi-user"
        "Web UI"))

    (v1.5-fix
      (name . "Remediation Engine")
      (target-completion . 75)
      (features
        "'gitloom fix --dry-run' shows proposed changes"
        "'gitloom fix --commit' applies remediations"
        "Fix templates for common issues"
        "Pre-commit hook integration"
        "Undo/rollback capability"))

    (v2.0-remote
      (name . "Remote Enforcement")
      (target-completion . 85)
      (features
        "GitHub Actions workflow generator"
        "Remote badge verification"
        "Webhook-triggered audits"
        "Badge status API for README badges"
        "Multi-repository batch operations"))

    (v2.5-multi
      (name . "Multi-Contributor")
      (target-completion . 90)
      (features
        "Per-contributor configuration"
        "Role-based audit rules"
        "Contributor onboarding rituals"
        "Team dashboard"))

    (v3.0-ecosystem
      (name . "Ecosystem & Extensions")
      (target-completion . 100)
      (features
        "Plugin architecture for custom badges"
        "Integration with popular CI/CD platforms"
        "Public badge registry"
        "Audit history and trends"
        "AI-assisted remediation suggestions"
        "Full web UI dashboard"))))

;; ============================================================================
;; NEXT ACTIONS (Prioritized)
;; ============================================================================

(define next-actions
  '(((priority . 1)
     (action . "Fix Cargo.toml edition from 2024 to 2021")
     (file . "batch-auditor/Cargo.toml")
     (effort . "5 minutes"))

    ((priority . 2)
     (action . "Create ui/assets/ directory for overlay emitter")
     (command . "mkdir -p ui/assets")
     (effort . "1 minute"))

    ((priority . 3)
     (action . "Replace hardcoded paths with environment variables")
     (files . ("batch-auditor/src/main.rs" "audit/lib/loom_audit/resolvers.ex"))
     (effort . "1-2 hours"))

    ((priority . 4)
     (action . "Implement first real diagnostic check (CI/CD presence)")
     (file . "ada/src/diagnose.adb")
     (effort . "2-3 hours"))

    ((priority . 5)
     (action . "Answer architecture questions to unblock design decisions")
     (blocker . #t)
     (effort . "Discussion"))

    ((priority . 6)
     (action . "Implement KanrenGenerator.ex to produce dynamic facts")
     (file . "audit/lib/loom_audit/kanren_generator.ex")
     (effort . "4-6 hours"))

    ((priority . 7)
     (action . "Write README.adoc with setup and usage instructions")
     (file . "README.adoc")
     (effort . "2-3 hours"))))

;; ============================================================================
;; SESSION CONTEXT (for AI continuity)
;; ============================================================================

(define session-context
  '((branch . "claude/create-state-scm-01J2dGv6h3cgaFWy7XEGjYxg")
    (last-action . "Created STATE.scm checkpoint file")
    (conversation-focus . "Project state documentation and planning")
    (files-examined . ("ada/src/*" "audit/lib/*" "batch-auditor/src/*"
                       "logic/*" "justfile/*" "*.ncl" "Justfile" "Podmanfile"))
    (understanding-level . "comprehensive")))

;; ============================================================================
;; EXPORT
;; ============================================================================

(define state
  `((metadata . ,metadata)
    (project-context . ,project-context)
    (current-position . ,current-position)
    (mvp-v1-route . ,mvp-v1-route)
    (issues . ,issues)
    (questions . ,questions)
    (roadmap . ,roadmap)
    (next-actions . ,next-actions)
    (session-context . ,session-context)))

;; End of STATE.scm
