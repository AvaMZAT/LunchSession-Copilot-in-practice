# Presenter Runbook

## Before the Session

Open the dedicated `GitHubCopilotDemo` directory as the VS Code workspace, not its presentation-containing parent. All commands below run from that directory in PowerShell unless stated otherwise. RTK is installed on the prepared machine; `rtk proxy` passes commands through unchanged.

- [ ] Confirm branch `main` and HEAD at `demo-starter`, with no Todo implementation or tests. Run the commands below; the diff and status output must be empty.
- [ ] Confirm the working tree is clean, including untracked files. Do not reset, stash, or commit unrelated work.
- [ ] Run `dotnet --info` through RTK; confirm SDK `10.0.201` and the local `global.json`.
- [ ] Run the solution build; allow time for any needed dependency restore before presenting.
- [ ] Start the API once with the `http` launch profile.
- [ ] Verify `http://localhost:5047/openapi/v1.json` returns 200. Starter `paths` is empty; `/` and `/todos` intentionally return 404.
- [ ] Stop the API with Ctrl+C. Stop other API processes you started in their own terminals; do not terminate unrelated processes.
- [ ] Close unnecessary editor tabs; open `demo/DEMO_PROMPTS.md` and `src/TodoApi/Program.cs`.
- [ ] Confirm the intended GitHub Copilot model in the model picker. Model availability and latency must be checked on the day.
- [ ] Confirm Agent Mode is active and terminal execution is allowed.
- [ ] Verify Copilot connectivity with a short question before the meeting.
- [ ] Disable unrelated notifications and verify no confidential data is visible in tabs, chat history, source control, or terminals.
- [ ] Rehearse named requests in `demo/TodoApi.http` if a REST Client extension is available. It is optional and was not installed by preparation.

```powershell
rtk proxy git branch --show-current
rtk proxy git status --porcelain
rtk proxy git diff demo-starter HEAD -- src tests README.md global.json GitHubCopilotDemo.sln
rtk proxy dotnet --info
rtk proxy dotnet build GitHubCopilotDemo.sln
rtk proxy dotnet run --project src/TodoApi --launch-profile http --no-build --no-restore
```

In a second terminal:

```powershell
rtk proxy curl.exe --fail --silent --show-error http://localhost:5047/openapi/v1.json
```

Then press Ctrl+C in the API terminal. Do not use `--no-build` after Copilot changes code until a fresh build has succeeded. Starter tests deliberately have no test cases; do not present that as passing feature coverage.

## Live Demonstration Flow

| Minute | Action |
| --- | --- |
| 0-1 | Introduce the small task and paste Prompt 1. Show the empty host briefly. |
| 1-2 | Let Agent Mode implement and build. Narrate the task and its limits while it works. |
| 2-3 | Inspect model, routes, and in-memory storage. Confirm build outcome; avoid reading every line. |
| 3-4 | Prompt 2: explain the flow. Relate a request to creating or updating a simple business record. |
| 4-5 | Prompt 3: generate endpoint tests. Point out the requested behaviors and validation case. |
| 5-6 | Let tests run; inspect a clear test name and result. Fix one small implementation issue only if time allows. |
| 6-7 | Demonstrate one create/read request if ready; otherwise summarize the tests. Stop the API before further builds. |
| 7-8 | Prompt 4: read-only review. Highlight one useful finding and one unnecessary production addition. |
| 8-9 | Optional Prompt 5 only if tests/review are finished and generation time remains. Otherwise skip it explicitly. |
| 9-10 | Close: describe -> implement -> explain -> test -> review -> document; summarize actual results and human responsibility. |

Ten minutes is a timebox, not a guarantee of model response time. Skip Prompt 5 when less than two minutes remain or earlier work is unfinished. At minute 6, switch to recovery if tests are still blocked. Never sacrifice the closing explanation to wait for generation. Do not claim a generated result until it is inspected and validated.

## Talking Points

| Prompt | Audience Should Observe | Say Aloud | Avoid Technical Depth |
| --- | --- | --- | --- |
| 1: Implement | A written request becomes a small code change and a checked build. | "We describe the outcome and constraints; Copilot proposes and implements a first version." | C# syntax, dependency injection internals, HTTP hosting mechanics. |
| 2: Explain | Existing code becomes a concise onboarding explanation. | "The conversation helps another colleague understand how the result works." | Framework startup internals and serializer behavior. |
| 3: Test | Checks cover creating, reading, changing, deleting, and rejecting invalid records. | "A plausible answer is not enough. We check observable behavior, like acceptance criteria for an ERP change." | xUnit lifecycle and the test server implementation. |
| 4: Review | Review distinguishes useful improvements from unnecessary complexity without editing. | "Copilot can offer a second perspective; we still decide what matters and approve the result." | Exhaustive security threat modeling or architecture patterns. |
| 5: Document | Actual code is summarized into run instructions and limitations. | "Documentation is another iteration, and its instructions also need verification." | Markdown formatting and production deployment design. |

## Recovery Options

### Completed Backup With a Clean Working Tree

Stop the API. Check status first. Only if output is empty:

```powershell
rtk proxy git status --porcelain
rtk proxy git switch demo/completed-backup
rtk proxy dotnet build GitHubCopilotDemo.sln --no-restore
rtk proxy dotnet test GitHubCopilotDemo.sln --no-build --no-restore
rtk proxy dotnet run --project src/TodoApi --launch-profile http --no-build --no-restore
```

Use a build after switching: ignored build outputs may belong to the other state. After the demonstration, stop the API, verify the tree is still clean, switch back with `rtk proxy git switch main`, and rebuild. Do not discard live edits to make a switch succeed.

### Completed Backup While Preserving Uncommitted Live Work

Cancel any active Copilot task and stop the API. From the demo repository, create a separate working directory from the prepared backup branch:

```powershell
rtk proxy git worktree add --detach ../GitHubCopilotDemo-recovery demo/completed-backup
rtk proxy dotnet restore ../GitHubCopilotDemo-recovery/GitHubCopilotDemo.sln
rtk proxy dotnet build ../GitHubCopilotDemo-recovery/GitHubCopilotDemo.sln --no-restore
rtk proxy dotnet test ../GitHubCopilotDemo-recovery/GitHubCopilotDemo.sln --no-build --no-restore
rtk proxy dotnet run --project ../GitHubCopilotDemo-recovery/src/TodoApi --launch-profile http --no-build --no-restore
```

Open `GitHubCopilotDemo-recovery` in a separate VS Code window. Leave the original work untouched. If that directory already exists, use a new unused name such as `GitHubCopilotDemo-recovery-2` consistently in all five commands; never overwrite it. Restore uses the packages cached during preparation but may attempt network access; rehearse before the session. Do not promise offline restore on another machine.

### Compilation Failure

Run `rtk proxy dotnet build GitHubCopilotDemo.sln`. Show the first relevant error, ask Copilot to fix only the implementation-caused compilation error, and rerun once. Limit this to 45 seconds. If still blocked, use the completed-backup procedure above, selecting the separate worktree when edits are present. Say that the code is a prepared fallback.

### Test Failure

Run `rtk proxy dotnet test GitHubCopilotDemo.sln`. Inspect the failing assertion before accepting a change. Do not delete or weaken a valid test merely to obtain green output. Allow one focused repair and rerun; otherwise use the completed-backup procedure and its verified tests. Distinguish a live failure from the prepared result.

### Copilot Generates Excessive Complexity

Stop generation. Enter: "Keep this demo to Minimal APIs, one in-memory store, and the existing xUnit project. Remove only the unnecessary additions you just made. Do not add infrastructure or change unrelated files. Build again." Inspect the diff. If simplifying will exceed 45 seconds, use the separate backup worktree instead of spending the session refactoring.

### Demo Takes Too Long

Skip Prompt 5 first. At minute 6, if the implementation or tests are blocked, switch to the backup or use these prompts and `ARCHITECTURE_NOTES.md` to explain the intended flow. At minute 9, stop generation and summarize actual observations. Do not call prepared code a live-generated success.

### Copilot Changes Unrelated Files

Stop the agent. Run `rtk proxy git status --short` and `rtk proxy git diff --name-only`. Inspect the Source Control diff. Do not run reset, clean, stash, or blanket restore commands. Preserve the current tree and continue in the separate completed-backup worktree. If the presentation outside this repository was touched, inspect its editor diff separately and leave any reversal to its owner; these Git snapshots do not contain it.

### Configured Port Is Already Occupied

Stop any API instance you started with Ctrl+C in its own terminal. Do not kill an unknown process. If the port remains occupied, use a different loopback port; the example below is only a candidate, not a reservation:

```powershell
rtk proxy dotnet run --project src/TodoApi --launch-profile http --no-build --no-restore -- --urls http://localhost:5048
```

Confirm the startup log says it is listening. If 5048 is also occupied, repeat with another unused port. Set `@baseUrl` in `demo/TodoApi.http` to the actual listening URL and use that URL for OpenAPI and curl. For the recovery worktree, substitute its project path. Treat the HTTP-file change as your own demo edit; do not discard unrelated changes.

### Network-Dependent Swagger Assets Are Unavailable

This preparation uses built-in OpenAPI JSON, not Swagger UI, so it loads no CDN assets. Open `/openapi/v1.json` directly or use curl and `demo/TodoApi.http`. If live generation added a UI that cannot load, bypass it; do not install another UI during the presentation. Use the prepared backup if the API itself was broken.

### GitHub Copilot Is Temporarily Unavailable

Copilot requires service connectivity and cannot continue generating offline. State that limitation plainly. Stop trying after one short retry; switch to the already-prepared backup, show the local tests and HTTP requests, and walk through `DEMO_PROMPTS.md` and `ARCHITECTURE_NOTES.md`. If local tools also fail, use the prepared documents only. Label this as a walkthrough of prepared material, not live AI output.