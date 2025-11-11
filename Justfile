# 🧶 Loom Project Justfile (Main)
export LOOM_CARE_MODE := env('LOOM_CARE_MODE', 'false')
export LOOM_SANDBOX := env('LOOM_SANDBOX', 'default')

@default: audit

audit:
    @just -f justfile/audit
logic-all:
    @just -f justfile/logic-all
render-trace:
    @just -f justfile/render-trace
emit-overlay:
    @just -f justfile/emit-overlay
emit-init:
    @just -f justfile/emit-init
sandbox:
    @just -f justfile/sandbox
clean:
    @just -f justfile/clean
