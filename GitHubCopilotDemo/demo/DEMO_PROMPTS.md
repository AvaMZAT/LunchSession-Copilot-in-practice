# Live Demo Prompts

Open `GitHubCopilotDemo` as the workspace and use Agent Mode. Paste each code block verbatim, one at a time. Prompt 5 is optional within ten minutes. The workflow is Describe -> Implement -> Explain -> Test -> Review -> Document.

## Prompt 1: Implement the Feature

```text
Create a simple REST API for a to-do list in .NET.

Requirements:
- Use the existing ASP.NET Core project
- Use Minimal APIs
- Store data in memory
- Add a TodoItem with Id, Title, and IsCompleted
- Add endpoints to list, retrieve, create, update, and delete todo items
- Validate that Title is not empty
- Use appropriate HTTP status codes
- Keep the implementation simple and easy to explain
- Build the solution and fix compilation errors
```

## Prompt 2: Explain the Solution

```text
Explain the solution for a new team member.

Focus on:
- the project structure
- how the application starts
- how todo items are stored
- how requests are handled
- how validation works

Use simple language and keep the explanation concise.
```

## Prompt 3: Generate Tests

```text
Create automated tests for the Todo API.

Requirements:
- Use the existing xUnit test project
- Test creating a todo item
- Test retrieving todo items
- Test updating a todo item
- Test deleting a todo item
- Test the empty-title validation
- Use clear test names
- Run all tests and fix only issues caused by the implementation
```

## Prompt 4: Review the Code

```text
Review the current solution as a senior .NET developer.

Focus on:
- readability
- maintainability
- correctness
- testability
- security-relevant concerns

Return:
1. What is already good
2. The three most relevant improvements
3. Which improvements are unnecessary for this small demonstration

Do not modify the code yet.
```

## Prompt 5: Create Documentation

```text
Create a concise README for this project.

Include:
- purpose
- project structure
- how to run the API
- how to run the tests
- available endpoints
- example requests
- limitations of the in-memory approach

Do not claim that the project is production-ready.
```