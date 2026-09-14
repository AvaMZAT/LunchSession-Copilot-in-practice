# Architecture Notes

## Purpose and States

A ten-minute Copilot workflow demonstration for ERP colleagues, not a .NET course. `main`/`demo-starter` contains only the host and OpenAPI setup. The architecture below describes `demo/completed-backup`, not functionality already present in the starter.

## Intentionally Simple Architecture

- `Program.cs` starts ASP.NET Core, registers one `TodoStore`, and maps five Minimal API endpoints.
- `TodoItem` contains integer Id, string Title, and boolean IsCompleted. `TodoInput` accepts the editable fields; callers do not assign IDs.
- Request flow: HTTP request -> route and JSON binding -> title validation for writes -> store operation -> HTTP status and JSON response.
- One singleton store holds a dictionary in process memory and assigns increasing IDs. A single lock protects dictionary access and ID allocation; immutable records and a copied list avoid exposing mutable storage.
- POST returns 201 with Location; reads and updates return 200; deletion returns 204; missing IDs return 404. Missing, null, empty, or whitespace titles return 400 without changing stored data.
- Development-only OpenAPI JSON describes the endpoints. No browser UI or network-loaded Swagger assets are required.

## Testing

xUnit endpoint tests use ASP.NET Core `WebApplicationFactory` and an in-process HTTP client. Each test gets a new host and empty store. These are integration/endpoint tests, not isolated unit tests: routing, JSON binding, validation, status codes, and storage are exercised together. Separate local HTTP smoke checks verify startup and OpenAPI over a real port.

## Explicit Limitations

Restart loses all data; instances do not share data. There is no authentication, authorization, user isolation, persistence, pagination, storage cap, or optimistic concurrency. Validation deliberately covers titles only. The local HTTP launch profile is not a secure public deployment. Tests cover the stated demo behavior, not exhaustive production assurance.

## Future Considerations, Not Current Requirements

A production solution would need requirements-led decisions on durable storage, access control, HTTPS, input/resource limits, operational monitoring, deployment, concurrency, and broader testing. None is implemented or required for this demonstration. Do not add infrastructure during the live session merely because a review suggests it.