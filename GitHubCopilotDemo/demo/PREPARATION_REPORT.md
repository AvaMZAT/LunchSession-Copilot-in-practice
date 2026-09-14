# Preparation Report

Prepared on 2026-09-14 on Windows x64. Results below are observed command outcomes, not expected results.

## Environment and Scope

- `rtk proxy dotnet --list-sdks` reported stable SDKs `7.0.410` and `10.0.201`; selected `10.0.201`, the latest installed stable SDK. No SDK was installed.
- `rtk proxy dotnet --info` reported SDK `10.0.201`, MSBuild `18.3.0`, and installed ASP.NET Core/.NET 10 runtimes including `10.0.12`.
- `global.json` pins SDK `10.0.201`, disables roll-forward and prereleases. Target framework: `net10.0`.
- The parent workspace was not a Git repository: `git rev-parse --show-toplevel` failed with "not a git repository". The existing presentation and `.github` content were left outside the new repository and were not edited.
- Created the solution in the dedicated `GitHubCopilotDemo` subdirectory, initialized local Git with initial branch `main`, and used the existing Git author identity without changing it.
- `rtk proxy git -C GitHubCopilotDemo remote -v` returned no remotes. No remote was added and no fetch, push, or other Git remote operation was performed.
- The template's checked `http` launch profile specifies `http://localhost:5047` and Development. No generated weather sample remains.

## Completed Backup Validation

Commands in this table were run from the parent workspace, hence the `GitHubCopilotDemo/` prefix. All were passed through RTK. Runbook commands instead assume the dedicated demo directory as the current directory.

| Executed Command | Observed Outcome |
| --- | --- |
| `rtk proxy dotnet restore GitHubCopilotDemo/GitHubCopilotDemo.sln` | Succeeded; all projects up to date for restore; no warnings reported after the dependency correction. |
| `rtk proxy dotnet build GitHubCopilotDemo/GitHubCopilotDemo.sln --no-restore` | Succeeded; 0 warnings, 0 errors; both API and tests built. |
| `rtk proxy dotnet test GitHubCopilotDemo/GitHubCopilotDemo.sln --no-build --verbosity minimal` | Passed: 17; failed: 0; skipped: 0. |
| `rtk proxy dotnet run --project GitHubCopilotDemo/src/TodoApi --launch-profile http --no-build --no-restore` | Started successfully in Development; listening on `http://localhost:5047`. |
| `rtk proxy curl.exe --fail --silent --show-error --include http://localhost:5047/todos` | HTTP 200 OK with JSON `[]`. |
| `rtk proxy curl.exe --fail --silent --show-error http://localhost:5047/openapi/v1.json` | Succeeded; OpenAPI 3.1.1 JSON contained all five operations and the Todo schemas. |
| Ctrl+C in the API terminal | Run command stopped; terminal returned to its prompt. The terminal wrapper reported interrupt exit code 1, not an application build/test failure. |
| `rtk proxy curl.exe --silent --show-error --max-time 3 http://localhost:5047/openapi/v1.json` after stopping | Expected connection failure: curl reported `(7) Could not connect to server`; RTK returned exit code 1. Confirms no listener remained on the demo port. |

The 17 xUnit endpoint cases cover creation and Location, default completion, empty/list/single reads, distinct IDs, persisted updates, deletion, missing IDs on GET/PUT/DELETE, and missing/null/empty/whitespace titles on POST and PUT without unintended storage changes. Each test has its own application host and store. The full CRUD behavior was tested in-process; real-port smoke checks covered list and OpenAPI.

### Preparation Findings Resolved

- The initially generated empty solution parsed/built with one "Unable to find a project to restore" warning; both projects were then added. The full-solution result above has no warnings.
- VS Code's test tool initially reported no discovered tests. Tests were actually compiled, discovered, and run using `dotnet test`; editor discovery is not required for this demo.
- The template referenced `Microsoft.AspNetCore.OpenApi` 10.0.5, which initially restored vulnerable `Microsoft.OpenApi` 2.0.0 (NU1903, GHSA-v5pm-xwqc-g5wc). Added a direct compatible `Microsoft.OpenApi` 2.7.5 reference, the patched 2.x version identified by the advisory. Restore/test no longer reported NU1903, and live OpenAPI generation succeeded. This is not a claim of a comprehensive security audit.

## Git States

- Completed implementation: local branch `demo/completed-backup` (created after the checks above).
- Starter: `main`, identified by tag `demo-starter` after starter validation.
- No dependency caches or build outputs are tracked. No separate backup folder is needed when local Git snapshots are available.
- The completed snapshot records the completed results here. Starter validation is recorded in this file on `main` after returning to the starter state.

## Starter Validation

The completed backup was saved at commit `b053944` and branch `demo/completed-backup` before removing the Todo implementation on `main`. The starter retains both projects and test dependencies, but no Todo source files or test cases.

| Executed Command or Check | Observed Outcome |
| --- | --- |
| `rtk proxy dotnet build GitHubCopilotDemo/GitHubCopilotDemo.sln --no-restore` | Succeeded; 0 warnings, 0 errors. Both projects were rebuilt after removal of the Todo code. |
| `rtk proxy dotnet run --project GitHubCopilotDemo/src/TodoApi --launch-profile http --no-build --no-restore` | Started successfully in Development on `http://localhost:5047`. |
| `rtk proxy curl.exe --fail --silent --show-error --include http://localhost:5047/openapi/v1.json` | HTTP 200 OK; OpenAPI 3.1.1 JSON with empty `paths`. |
| `rtk proxy curl.exe --silent --show-error --include http://localhost:5047/todos` | HTTP 404 Not Found, as required for the starter. |
| `rtk proxy curl.exe --silent --show-error --include http://localhost:5047/` | HTTP 404 Not Found; no unrelated root sample. |
| `rtk proxy dotnet test GitHubCopilotDemo/GitHubCopilotDemo.sln --no-build --list-tests` | Reported no tests available, as intended. This is not a passing Todo test suite. |
| VS Code source search scoped to `src` and `tests`, excluding ignored build outputs | No matches for TodoItem, TodoStore, business MapGet/Post/Put/Patch/Delete calls, weather examples, or Fact/Theory attributes. |
| Ctrl+C in the starter API terminal | Returned to the shell; wrapper reported interrupt exit code 1. |
| `rtk proxy curl.exe --silent --show-error --max-time 3 http://localhost:5047/openapi/v1.json` after stopping | Expected connection failure `(7) Could not connect to server`; confirms port released. |

The attempted `rtk proxy rg` source check could not run because `rg` is not on PATH. The editor's search tool was used successfully instead. Editor diagnostics reported no errors in the changed starter source and README.

After saving the validated starter commit, `rtk proxy git -C GitHubCopilotDemo status --porcelain=v1 --untracked-files=all` returned empty output. `git branch --verbose` confirmed `main` on the starter and `demo/completed-backup` on `b053944`. `git ls-files` confirmed that neither Todo implementation/tests nor dependency/build output directories are tracked in the starter. This final report update is saved as a documentation-only commit; `demo-starter` identifies the final starter snapshot.

## Live-Session Caveats

Copilot service connectivity, model availability, generation time, and the presenter's UI settings are not validated by local API tests. Verify them before presenting. REST Client extension interaction was not exercised; the HTTP file uses named-response syntax supported by the common VS Code REST Client extension. Use curl if that extension is unavailable. The API uses OpenAPI JSON only, with no Swagger UI/CDN requirement. Restore initially requires package access; do not assume another machine has the prepared NuGet cache. Prompt 5 is optional within the ten-minute timebox.