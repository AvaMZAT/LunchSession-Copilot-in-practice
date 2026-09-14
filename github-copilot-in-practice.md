<!--
pptmd: v1
deck:
  id: github-copilot-in-practice
  title: GitHub Copilot in Practice
  subtitle: From Coding Assistant to Everyday Development Partner
  context: ERP Copilot Coffee Break
  language: en-US
  audience: ERP colleagues with little or no hands-on GitHub Copilot experience
  audience_profile:
    - business-stakeholder
  purpose: Help ERP colleagues understand GitHub Copilot, recognize practical day-to-day use cases, apply responsible human validation, and continue learning through the GHCP Prompt Society.
  core_thesis: GitHub Copilot has evolved beyond code completion into an interactive development assistant that can support many stages of the development workflow, but its outputs still require human expertise, review, and responsible use.
  theme: avanade-standard
  brand_mode: template
  template_source: Avanade Standard slide master in the currently open presentation
  palette: avanade-standard
  typography: avanade-standard
  brand_guidance: Use the built-in verified Avanade Standard palette, theme fonts, layouts, orange primary accent, high-contrast neutrals, and Do what matters presentation style.
  aspect_ratio: "16:9"
  delivery_mode: meeting-room
  notes_mode: full
  content_density: medium
  duration_minutes: 30
  slide_count: 9
  target: currently-open-presentation
  citation_mode: none
  date: 2026-09-14
  accessibility:
    contrast_safe: true
    logical_reading_order: true
    color_is_not_sole_carrier: true
    alt_text_required: true
-->

<!--
slide:
  id: s01
  number: 1
  title: GitHub Copilot in Practice
  purpose: Welcome the audience and position the session as a practical introduction.
  primary_content_signal: Practical collaboration between people, software development, and AI.
  layout: cover
  layout_candidates:
    - Avanade Standard cover with a single human-centered hero visual
    - Avanade Standard typographic cover with a restrained collaboration motif
  selected_layout: Avanade Standard cover with a single human-centered hero visual
  theme_variant: avanade-standard
  background: light
  reading_order:
    - title
    - subtitle
    - context
    - hero visual
  visual_reasoning: >-
    The content signal is orientation and practical collaboration. A hero cover gives the title suitable prominence and more whitespace than a typographic-only cover, while one restrained visual avoids a cluttered technology collage. Use the existing Avanade Standard cover layout and keep GitHub Copilot as the subject rather than introducing a separate GitHub or Microsoft identity.
  media:
    type: image-placeholder
    placement: Avanade Standard hero area
    brief: People collaborating around software delivery with subtle AI assistance; professional, human-centered, and free of product logos or fabricated interfaces.
    alt: Colleagues collaborating on software development with AI-assisted support.
    decorative: false
  anti_patterns:
    - Cluttered technology collage
    - GitHub-inspired dark theme
    - Separate Microsoft or GitHub visual identity
    - Decorative gradients or generic AI imagery
  speaker_notes: >-
    Timing: 1 minute. Welcome participants to the ERP Copilot Coffee Break. Position the session as a practical introduction for colleagues with limited hands-on experience. Explain that the next 30 minutes will show what GitHub Copilot is, where it can help in everyday work, and why human expertise and review remain essential. Transition by introducing the three takeaways for the session.
-->
# GitHub Copilot in Practice

## From Coding Assistant to Everyday Development Partner

**ERP Copilot Coffee Break**

---

<!--
slide:
  id: s02
  number: 2
  title: What You Will Take Away
  purpose: Set three concrete learning outcomes for the session.
  primary_content_signal: Three practical outcomes that move from understanding to action.
  layout: three-column
  layout_candidates:
    - Three-column pillar layout with one icon and one outcome per pillar
    - Horizontal three-step process from understand to discover to start
  selected_layout: Three-column pillar layout with one icon and one outcome per pillar
  theme_variant: avanade-standard
  background: light
  reading_order:
    - title
    - understand pillar
    - discover pillar
    - start pillar
    - highlighted takeaway
  visual_reasoning: >-
    The content signal is three equally weighted outcomes rather than a sequence. Three pillars communicate parity and scan faster than a process. Use simple Avanade Standard line icons and short labels, then anchor the slide with one orange-accent takeaway band.
  media:
    type: icon-set
    placement: one icon above each pillar
    brief: Three simple template-compatible icons for understanding, practical discovery, and starting.
    alt: Three icons representing understanding GitHub Copilot, discovering use cases, and taking a first step.
    decorative: false
  anti_patterns:
    - Generic bullet list
    - Three dense text cards
    - Unrelated stock imagery
    - Meaning conveyed by accent color alone
  speaker_notes: >-
    Timing: 2 minutes. Explain that the session has three practical outcomes: understand the basics, recognize useful everyday scenarios, and identify a realistic first step. Emphasize that participants do not need deep technical knowledge. Read the highlighted takeaway as the promise for the session, then transition to how GitHub Copilot has evolved.
-->
# What You Will Take Away

### Understand
GitHub Copilot and its core capabilities

### Discover
Practical use cases for everyday work

### Start
With one simple next step

> **After 30 minutes, you will understand the basics and have concrete ideas for trying GitHub Copilot yourself.**

---

<!--
slide:
  id: s03
  number: 3
  title: GitHub Copilot Has Evolved Beyond Code Completion
  purpose: Explain GitHub Copilot and its evolution in accessible language.
  primary_content_signal: A three-stage evolution from suggestions to conversation to multi-step assistance.
  layout: process
  diagram_type: SmartArt Basic Chevron Process
  layout_candidates:
    - SmartArt Basic Chevron Process with three stages
    - Three milestone timeline with short capability captions
  selected_layout: SmartArt Basic Chevron Process with three stages
  theme_variant: avanade-standard
  background: light
  reading_order:
    - title
    - plain-language definition
    - code completion stage
    - chat stage
    - agentic workflows stage
    - human review statement
  visual_reasoning: >-
    The content signal is evolution. PowerPoint SmartArt Basic Chevron Process makes direction and increasing scope immediately clear, while a timeline could imply product release dates that are neither needed nor supplied. Keep each chevron concise and pair the process with a plain-language definition and a persistent human-review statement.
  media:
    type: smartart
    placement: center
    brief: Three connected chevrons labeled Code Completion, Chat, and Agentic Workflows, with a short plain-language caption beneath each.
    alt: A three-step progression from code completion to chat and then to agentic workflows, showing increasing interaction and task scope.
    decorative: false
  anti_patterns:
    - Plain bullet list for the evolution
    - Product release timeline
    - Technical model architecture
    - Generic embedded diagram or fabricated interface
  speaker_notes: >-
    Timing: 4 minutes. Define GitHub Copilot as an AI-powered assistant for software development. Explain that it can support writing, explaining, testing, and improving code through interactive conversations. Walk left to right: code completion suggests code while someone works; chat supports questions and iterative guidance; agentic workflows can support broader multi-step tasks. Note that Copilot uses context available in the development environment, but its suggestions must always be reviewed and validated. Transition from the evolution to the wider development workflow.
-->
# GitHub Copilot Has Evolved Beyond Code Completion

**An AI-powered assistant for software development that uses available development context.**

**Code Completion**  →  **Chat**  →  **Agentic Workflows**

Suggestions while writing  |  Interactive help  |  Support for multi-step tasks

> **Copilot can help write, explain, test, and improve code. Its suggestions still require review and validation.**

---

<!--
slide:
  id: s04
  number: 4
  title: Copilot Can Support the Development Workflow End to End
  purpose: Show that GitHub Copilot can assist across multiple workflow stages.
  primary_content_signal: Eight capabilities grouped into four meaningful workflow stages.
  layout: capability-map
  layout_candidates:
    - Four-stage horizontal capability map
    - Two-by-two capability cluster grid
  selected_layout: Four-stage horizontal capability map
  theme_variant: avanade-standard
  background: light
  reading_order:
    - title
    - understand stage
    - create stage
    - validate stage
    - improve stage
    - highlighted takeaway
  visual_reasoning: >-
    The content signal is breadth across a workflow, not eight independent features. Four labeled stages turn the required capabilities into a memorable path and avoid eight plain bullets. A two-by-two grid was considered, but the horizontal map better reinforces end-to-end support for a live audience.
  media:
    type: native-shapes
    placement: center
    brief: Four connected workflow stages with simple Avanade Standard icons; label the links so the flow remains clear without relying on color.
    alt: Four connected stages showing how Copilot can help understand, create, validate, and improve development work.
    decorative: false
  anti_patterns:
    - Eight plain bullets
    - Feature table
    - Circular lifecycle that implies full automation
    - Unsupported productivity claims
  speaker_notes: >-
    Timing: 3 minutes. Move through the four clusters. Understand includes explaining existing code and assisting with error analysis. Create includes initial implementations and repetitive development tasks. Validate includes unit tests plus security and quality review support. Improve includes refactoring and documentation. Stress that Copilot assists within these stages; it does not own the workflow or remove the need for review. Transition to seeing the interaction live.
-->
# Copilot Can Support the Development Workflow End to End

### Understand
Explain existing code · Assist with error analysis

### Create
Generate initial implementations · Accelerate repetitive tasks

### Validate
Create unit tests · Support security and quality reviews

### Improve
Support refactoring · Create and update documentation

> **GitHub Copilot supports more than writing code. It can assist across multiple stages of the development workflow.**

---

<!--
slide:
  id: s05
  number: 5
  title: Live Demo – From Task to Result
  purpose: Demonstrate iterative collaboration with GitHub Copilot.
  primary_content_signal: A clear three-step demo flow supported by reusable prompts and a large live workspace.
  layout: live-demo
  layout_candidates:
    - Minimal three-step header with a large live-demo placeholder
    - Narrow prompt rail beside a large live-demo placeholder
  selected_layout: Narrow prompt rail beside a large live-demo placeholder
  theme_variant: avanade-standard
  background: light
  reading_order:
    - LIVE DEMO label
    - title
    - three-step flow
    - initial prompt
    - follow-up prompts
    - live-demo placeholder
    - highlighted takeaway
  visual_reasoning: >-
    The content signal is the live interaction, so most of the slide must remain open. A narrow prompt rail keeps the demonstration sequence visible without competing with the shared application window. The alternative top process would reduce the usable demo height. Use native text and shapes only; do not fabricate a screenshot.
  media:
    type: live-demo-placeholder
    placement: dominant right-side area
    brief: Large labeled area reading LIVE DEMONSTRATION AREA — switch to the development environment; no screenshot or decorative fill.
    alt: Reserved area for a live demonstration of GitHub Copilot responding to an initial task and iterative follow-up prompts.
    decorative: false
  anti_patterns:
    - Fabricated screenshot
    - Decorative illustration in the demo area
    - Dense prompt text across the full slide
    - More than the required demo sequence
  speaker_notes: >-
    Timing: 10 minutes. Keep this slide visible while introducing the flow, then switch to the development environment. Minute 0–2: state the task and enter “Create a simple REST API for a to-do list in .NET.” Minute 2–5: inspect the first result and improve it iteratively with clearer context. Minute 5–8: ask Copilot to explain the solution for a new team member and create appropriate unit tests. Minute 8–9: ask it to review the code, suggest improvements, and add clear technical documentation. Minute 9–10: summarize what changed and explicitly note what still needs human validation. If the demo fails, use the prompts on this slide to explain the intended interaction without claiming a result. Transition with: “The same interaction pattern can support different roles in different ways.”
-->
# Live Demo – From Task to Result

**LIVE DEMO**

**1. Describe the task**  →  **2. Improve iteratively**  →  **3. Explain, test, and review**

**Initial prompt**  
“Create a simple REST API for a to-do list in .NET.”

**Follow-up prompts**
- “Explain the solution for a new team member.”
- “Create appropriate unit tests.”
- “Review the code and suggest improvements.”
- “Add clear technical documentation.”

**[LIVE DEMONSTRATION AREA — switch to the development environment]**

> **Good results come from context, clear instructions, and iterative collaboration.**

---

<!--
slide:
  id: s06
  number: 6
  title: Different Roles Can Use Copilot in Different Ways
  purpose: Make possible use cases relevant to development, architecture, and ERP or project roles.
  primary_content_signal: Three role-based groups with distinct but complementary possible uses.
  layout: three-column
  layout_candidates:
    - Three-column role layout with icon, role label, and four concise examples
    - Hub-and-spoke layout with Copilot at the center and three role groups around it
  selected_layout: Three-column role layout with icon, role label, and four concise examples
  theme_variant: avanade-standard
  background: light
  reading_order:
    - title
    - possible use cases qualifier
    - development column
    - architecture column
    - project and ERP teams column
  visual_reasoning: >-
    The content signal is role-specific relevance. Three columns permit direct scanning and preserve equal status without suggesting that Copilot replaces collaboration between roles. A hub-and-spoke was considered, but it would reduce space for the concrete examples. Use icons plus text labels so the distinction does not depend on color.
  media:
    type: icon-set
    placement: one icon per role column
    brief: Template-compatible line icons for development, architecture, and project or ERP teamwork.
    alt: Three icons identifying development, architecture, and project or ERP team use cases.
    decorative: false
  anti_patterns:
    - Bordered table
    - Customer examples or logos
    - Adoption or productivity metrics
    - Claims that outcomes are guaranteed
  speaker_notes: >-
    Timing: 4 minutes. Present every item as a possible use case, not a promised outcome. For development, highlight boilerplate, legacy code understanding, tests, and refactoring preparation. For architecture, mention requirements analysis, architecture decisions, ADRs, and security review support. For project and ERP teams, focus on user stories, acceptance criteria, technical explanations, and structured documentation. Emphasize that useful prompts and validation differ by role. Transition to the responsibility that remains common across all roles.
-->
# Different Roles Can Use Copilot in Different Ways

**Possible use cases**

### Development
- Generate boilerplate code
- Understand legacy code
- Create unit tests
- Prepare refactoring activities

### Architecture
- Analyze requirements
- Structure architecture decisions
- Prepare documentation and ADRs
- Support security reviews

### Project and ERP Teams
- Improve user stories
- Formulate acceptance criteria
- Explain technical concepts
- Structure documentation

---

<!--
slide:
  id: s07
  number: 7
  title: Copilot Accelerates Work, but Responsibility Remains Human
  purpose: Balance effective usage conditions with non-delegable human responsibilities.
  primary_content_signal: A balanced distinction between where Copilot helps and where people remain accountable.
  layout: comparison
  layout_candidates:
    - Balanced two-column comparison with labeled headers and distinct icons
    - Before-and-after style split showing assistance followed by human validation
  selected_layout: Balanced two-column comparison with labeled headers and distinct icons
  theme_variant: avanade-standard
  background: light
  reading_order:
    - title
    - works particularly well column
    - still requires human responsibility column
    - highlighted takeaway
  visual_reasoning: >-
    The content signal is balance, not a handoff sequence. Two equal columns show that effective assistance and human accountability coexist. Distinct headers, icons, and wording preserve the distinction independently of color; avoid a bordered data table or red-versus-green judgment framing.
  media:
    type: comparison-icons
    placement: column headers
    brief: A support icon for effective use and a human approval or shield icon for responsibility, using template-native icon styling.
    alt: Two labeled sections contrasting effective Copilot usage conditions with responsibilities that remain human.
    decorative: false
  anti_patterns:
    - Bordered data table
    - Red versus green as the only distinction
    - Language implying autonomous approval
    - Alarmist security imagery
  speaker_notes: >-
    Timing: 3 minutes. Start on the left: Copilot works particularly well for clearly scoped tasks with sufficient context, iterative collaboration, reviews, tests, documentation support, and repetitive activities. Then move to the right: people remain responsible for functional validation, security and compliance, protecting confidential information, checking generated dependencies and sources, and final approval. State the highlighted takeaway exactly. Transition by explaining that broader agentic workflows increase the value of these guardrails rather than removing them.
-->
# Copilot Accelerates Work, but Responsibility Remains Human

### Works Particularly Well
- Clearly scoped tasks
- Sufficient context
- Iterative collaboration
- Reviews, tests, and documentation support
- Repetitive development activities

### Still Requires Human Responsibility
- Functional validation
- Security and compliance assessment
- Protection of confidential information
- Verification of generated dependencies and sources
- Final approval and accountability

> **Copilot provides suggestions. Responsibility remains with the user.**

---

<!--
slide:
  id: s08
  number: 8
  title: The Next Step Is Agentic Workflows
  purpose: Give a short, accessible outlook on support for broader multi-step tasks.
  primary_content_signal: A progression from individual assistance to connected multi-step task support.
  layout: progression
  diagram_type: SmartArt Increasing Circle Process
  layout_candidates:
    - SmartArt Increasing Circle Process showing expanding task scope
    - Hub-and-spoke visual connecting agent mode, specialized agents, MCP, systems, and multi-step tasks
  selected_layout: SmartArt Increasing Circle Process showing expanding task scope
  theme_variant: avanade-standard
  background: light
  reading_order:
    - title
    - agent mode stage
    - specialized agents stage
    - connected context stage
    - multi-step tasks stage
    - highlighted takeaway
  visual_reasoning: >-
    The content signal is increasing scope. SmartArt Increasing Circle Process expresses expansion without suggesting implementation detail or a release timeline. Group MCP and system integration under connected context, define MCP only by its full name, and keep the language outcome-oriented for a non-technical audience.
  media:
    type: smartart
    placement: center
    brief: Four expanding stages labeled Agent Mode, Specialized Agents, Connected Context, and Multi-Step Tasks; add “Model Context Protocol (MCP) and development or project systems” as a short caption under Connected Context.
    alt: A four-stage progression showing agent mode, specialized agents, connected context through MCP and systems, and support for multi-step tasks.
    decorative: false
  anti_patterns:
    - MCP implementation details
    - Technical architecture diagram
    - Product roadmap or dates
    - Claim of fully autonomous delivery
  speaker_notes: >-
    Timing: 2 minutes. Explain that the direction of travel is from answering one question at a time toward supporting complete multi-step tasks. Briefly name agent mode and specialized agents. Expand MCP once as Model Context Protocol and describe it only as one way tools can work with relevant context and connected systems; do not explain implementation details. Mention integration with development and project systems. Reiterate that broader task support still needs human direction and validation. Transition to the community as the practical place to continue learning.
-->
# The Next Step Is Agentic Workflows

**Agent Mode**  →  **Specialized Agents**  →  **Connected Context**  →  **Multi-Step Tasks**

Model Context Protocol (MCP) and integration with development and project systems can help make relevant context available.

> **The evolution is moving from answering individual questions to supporting complete tasks.**

---

<!--
slide:
  id: s09
  number: 9
  title: Continue with the GHCP Prompt Society
  purpose: Convert interest into one concrete learning and community action.
  primary_content_signal: A dominant invitation to join the GHCP Prompt Society and try one practical use case.
  layout: call-to-action
  layout_candidates:
    - Avanade Standard CTA layout with dominant invitation and structured participation placeholders
    - Community hub layout with the CTA at center and learning benefits around it
  selected_layout: Avanade Standard CTA layout with dominant invitation and structured participation placeholders
  theme_variant: avanade-standard
  background: light
  reading_order:
    - title
    - primary call to action
    - community benefits
    - weekly opportunity one placeholder
    - weekly opportunity two placeholder
    - future community link or QR placeholder
    - main closing statement
    - supporting closing message
  visual_reasoning: >-
    The content signal is a direct next action. The native Avanade CTA layout gives “Join the GHCP Prompt Society” dominant scale and keeps missing participation details visibly honest through labeled placeholders. A hub layout was considered, but it would dilute the invitation and risk overcrowding. Use text labels and borders in addition to accent color.
  media:
    type: placeholder-group
    placement: supporting CTA area
    brief: Three clearly labeled placeholders for Weekly Opportunity 1 details, Weekly Opportunity 2 details, and Future Community Link or QR Code. Do not generate a QR code or fill in any details.
    alt: Placeholders for two recurring weekly participation opportunities and a future GHCP Prompt Society community link or QR code.
    decorative: false
  anti_patterns:
    - Generic Thank You or Questions ending
    - Fabricated session names, weekdays, times, locations, organizers, or links
    - Fabricated QR code
    - Community benefits hidden beneath decorative imagery
  speaker_notes: >-
    Timing: 1 minute. Present the GHCP Prompt Society as the primary next step. Explain that participants can learn from practical GitHub Copilot use cases, discover reusable prompts, custom agents, and workflows, exchange experiences, connect with active users, and bring their own questions or challenges. Mention that there are two recurring weekly opportunities for practical examples, peer exchange, demonstrations, and feedback, but do not add names, days, times, locations, organizers, or access details. Clarify that no one needs to be an expert before joining. End directly: “Do not stop with this presentation. Join the GHCP Prompt Society, try one concrete use case, and learn together with the community.”
-->
# Continue with the GHCP Prompt Society

## Join the GHCP Prompt Society.

Learn from practical use cases · Discover reusable prompts, custom agents, and workflows · Exchange experiences and lessons learned · Connect with colleagues · Bring your own questions and use cases

**Two recurring weekly opportunities** provide practical examples, peer exchange, demonstrations, and feedback.

**[PLACEHOLDER — Weekly Opportunity 1 details]**  
**[PLACEHOLDER — Weekly Opportunity 2 details]**  
**[PLACEHOLDER — Future community link or QR code]**

> **Do not stop with this presentation. Join the GHCP Prompt Society, try one concrete use case, and learn together with the community.**

**GitHub Copilot does not replace expertise. It helps people use their expertise more effectively.**

---

## PowerPoint Copilot Prompt

Create exactly nine slides in the currently open PowerPoint presentation. The currently open presentation already contains the Avanade Standard template and slide master. Build the slides into that presentation, preserve its existing Avanade Standard master, theme, layouts, placeholders, typography, footer behavior, and branding, and use existing Avanade Standard layouts wherever available. Use the template's verified Avanade Standard palette, including its orange primary accent and high-contrast neutral surfaces, and apply the concise “Do what matters” presentation style where appropriate. Do not replace the template, create a new presentation, or introduce an unrelated visual identity. Do not apply a generic Office, Microsoft, GitHub, dark GitHub-inspired, or co-branded style. GitHub Copilot is the subject, not the visual brand.

The audience is ERP colleagues and business stakeholders with little or no hands-on GitHub Copilot experience and limited technical depth. The presentation is a 30-minute live meeting-room session in English, 16:9, with medium content density and full English speaker notes. Keep visible text concise, use one clear message per slide, preserve logical reading order and strong contrast, and never rely on color alone. Add the specified alt text to every non-decorative visual. Prefer native PowerPoint layouts, native shapes, template icons, and the named SmartArt types. Do not fabricate screenshots, URLs, QR codes, customer examples, customer names, metrics, outcomes, case studies, schedules, session details, or unsupported product claims. Do not turn the deck into a technical deep dive.

Slide 1, 1 minute — “GitHub Copilot in Practice.” Use an Avanade Standard cover layout. Subtitle: “From Coding Assistant to Everyday Development Partner.” Context: “ERP Copilot Coffee Break.” Communicate practical collaboration between people, software development, and AI with one restrained, professional, human-centered hero visual. Alt text: “Colleagues collaborating on software development with AI-assisted support.” Avoid a cluttered technology collage, fabricated product interfaces, generic AI imagery, and separate GitHub or Microsoft branding. Speaker notes: Welcome participants; position this as a practical introduction; explain that the session covers what GitHub Copilot is, where it can help, and why human expertise and review remain essential; transition to the three takeaways.

Slide 2, 2 minutes — “What You Will Take Away.” Use a three-column or three-pillar Avanade Standard layout with one simple template-compatible icon per pillar. Pillar 1: “Understand — GitHub Copilot and its core capabilities.” Pillar 2: “Discover — Practical use cases for everyday work.” Pillar 3: “Start — With one simple next step.” Highlight: “After 30 minutes, you will understand the basics and have concrete ideas for trying GitHub Copilot yourself.” Alt text: “Three icons representing understanding GitHub Copilot, discovering use cases, and taking a first step.” Avoid a generic bullet list, dense text cards, or unrelated stock imagery. Speaker notes: Explain the three practical outcomes, stress that no deep technical knowledge is required, state the highlighted promise, and transition to Copilot's evolution.

Slide 3, 4 minutes — “GitHub Copilot Has Evolved Beyond Code Completion.” Use PowerPoint SmartArt “Basic Chevron Process” with exactly three connected stages: “Code Completion,” “Chat,” and “Agentic Workflows.” Add short captions: “Suggestions while writing,” “Interactive help,” and “Support for multi-step tasks.” Add a concise definition: “An AI-powered assistant for software development that uses available development context.” Highlight: “Copilot can help write, explain, test, and improve code. Its suggestions still require review and validation.” Alt text: “A three-step progression from code completion to chat and then to agentic workflows, showing increasing interaction and task scope.” Avoid a plain bullet list, product release timeline, technical model architecture, or fabricated interface. Speaker notes: Define GitHub Copilot in plain language; walk through the three stages; mention interactive conversations and context available in the development environment; emphasize review and validation; transition to the wider workflow.

Slide 4, 3 minutes — “Copilot Can Support the Development Workflow End to End.” Use a four-stage horizontal capability map made with an existing Avanade process layout or native PowerPoint shapes. Stage 1, “Understand”: “Explain existing code” and “Assist with error analysis.” Stage 2, “Create”: “Generate initial implementations” and “Accelerate repetitive tasks.” Stage 3, “Validate”: “Create unit tests” and “Support security and quality reviews.” Stage 4, “Improve”: “Support refactoring” and “Create and update documentation.” Highlight: “GitHub Copilot supports more than writing code. It can assist across multiple stages of the development workflow.” Alt text: “Four connected stages showing how Copilot can help understand, create, validate, and improve development work.” Avoid eight plain bullets, a feature table, a circular lifecycle implying full automation, or productivity claims. Speaker notes: Explain each cluster briefly, stress that Copilot assists rather than owns the workflow, and transition to the live demonstration.

Slide 5, 10 minutes — “Live Demo – From Task to Result.” Mark the slide clearly as “LIVE DEMO.” Keep it intentionally minimal. Use a narrow prompt rail and reserve a large, clearly labeled area reading “[LIVE DEMONSTRATION AREA — switch to the development environment].” Show a compact three-step flow: “1. Describe the task → 2. Improve iteratively → 3. Explain, test, and review.” Initial prompt: “Create a simple REST API for a to-do list in .NET.” Follow-up prompts: “Explain the solution for a new team member.” “Create appropriate unit tests.” “Review the code and suggest improvements.” “Add clear technical documentation.” Highlight: “Good results come from context, clear instructions, and iterative collaboration.” Alt text: “Reserved area for a live demonstration of GitHub Copilot responding to an initial task and iterative follow-up prompts.” Do not fabricate a screenshot, fill the demonstration area with decoration, or add extra demo content. Speaker notes: Minute 0–2, introduce and enter the task; minute 2–5, inspect and iteratively improve the first result; minute 5–8, request an explanation and tests; minute 8–9, request review, improvements, and documentation; minute 9–10, summarize changes and required human validation. If the live demo fails, use the visible prompts to explain the intended interaction without claiming a result. Transition to role-based use cases.

Slide 6, 4 minutes — “Different Roles Can Use Copilot in Different Ways.” Use three visually distinct columns with template-compatible icons and the qualifier “Possible use cases.” Column 1, “Development”: generate boilerplate code; understand legacy code; create unit tests; prepare refactoring activities. Column 2, “Architecture”: analyze requirements; structure architecture decisions; prepare documentation and ADRs; support security reviews. Column 3, “Project and ERP Teams”: improve user stories; formulate acceptance criteria; explain technical concepts; structure documentation. Alt text: “Three icons identifying development, architecture, and project or ERP team use cases.” Do not use a table. Do not add customer references, productivity statistics, adoption metrics, or guaranteed outcomes. Speaker notes: Present each item only as a possible use case; explain that prompts and validation differ by role; transition to the human responsibility shared across all roles.

Slide 7, 3 minutes — “Copilot Accelerates Work, but Responsibility Remains Human.” Use a balanced, borderless two-column comparison with distinct text headers and icons so meaning does not depend on color. Left header, “Works Particularly Well”: clearly scoped tasks; sufficient context; iterative collaboration; reviews, tests, and documentation support; repetitive development activities. Right header, “Still Requires Human Responsibility”: functional validation; security and compliance assessment; protection of confidential information; verification of generated dependencies and sources; final approval and accountability. Highlight: “Copilot provides suggestions. Responsibility remains with the user.” Alt text: “Two labeled sections contrasting effective Copilot usage conditions with responsibilities that remain human.” Avoid a bordered data table, red-versus-green-only distinction, autonomous approval language, or alarmist security imagery. Speaker notes: Explain both sides as complementary; state the highlighted takeaway exactly; transition by noting that broader agentic workflows increase the importance of guardrails.

Slide 8, 2 minutes — “The Next Step Is Agentic Workflows.” Use PowerPoint SmartArt “Increasing Circle Process” to show expanding task scope in four stages: “Agent Mode,” “Specialized Agents,” “Connected Context,” and “Multi-Step Tasks.” Under Connected Context, add: “Model Context Protocol (MCP) and development or project systems.” Highlight: “The evolution is moving from answering individual questions to supporting complete tasks.” Alt text: “A four-stage progression showing agent mode, specialized agents, connected context through MCP and systems, and support for multi-step tasks.” Keep this accessible and non-technical. Avoid MCP implementation details, a technical architecture diagram, a dated product roadmap, or any claim of fully autonomous delivery. Speaker notes: Explain the shift toward broader tasks; name agent mode and specialized agents; expand MCP once as Model Context Protocol and describe it only as a way to work with relevant context and connected systems; reiterate human direction and validation; transition to the community.

Slide 9, 1 minute — “Continue with the GHCP Prompt Society.” Use a strong Avanade Standard call-to-action layout. Make “Join the GHCP Prompt Society.” the largest and most visually dominant message. Concisely communicate these benefits: learn from practical GitHub Copilot use cases; discover reusable prompts, custom agents, and workflows; exchange experiences, challenges, and lessons learned; connect with colleagues who actively use GitHub Copilot; bring questions and use cases to the community. State: “Two recurring weekly opportunities provide practical examples, peer exchange, demonstrations, and feedback.” Include three clearly labeled placeholders exactly as follows: “[PLACEHOLDER — Weekly Opportunity 1 details],” “[PLACEHOLDER — Weekly Opportunity 2 details],” and “[PLACEHOLDER — Future community link or QR code].” Do not fill them in and do not generate a QR code. Main closing statement: “Do not stop with this presentation. Join the GHCP Prompt Society, try one concrete use case, and learn together with the community.” Supporting message: “GitHub Copilot does not replace expertise. It helps people use their expertise more effectively.” Alt text: “Placeholders for two recurring weekly participation opportunities and a future GHCP Prompt Society community link or QR code.” Do not end with a generic “Thank You” or “Questions?” slide. Do not invent session names, weekdays, times, locations, organizers, access links, or schedules. Speaker notes: Present the GHCP Prompt Society as the primary next step; clarify that participants do not need to be experts; mention the two recurring weekly opportunities without adding unverified details; invite prompts, questions, challenges, and use cases; end with the direct invitation in the main closing statement.

Preserve the exact timing of 1 + 2 + 4 + 3 + 10 + 4 + 3 + 2 + 1 = 30 minutes in the speaker notes. Keep Slide 5 as the 10-minute live demonstration and Slide 9 as the GHCP Prompt Society call to action. After generating the slides, manually inspect every slide for overflow, overlap, contrast, reading order, correct template usage, complete notes, and accurate alt text. Review all generated content before presenting; Copilot output still requires human validation.

## Validation Checklist

- [x] Exactly 9 slide bodies and exactly 9 H1 slide titles
- [x] Exactly 9 complete slide manifests
- [x] English used for all visible content, labels, visual directions, alt text, and speaker notes
- [x] Timings total exactly 30 minutes: 1 + 2 + 4 + 3 + 10 + 4 + 3 + 2 + 1
- [x] Slide 5 is clearly marked as a 10-minute live demo
- [x] Slide 9 makes the GHCP Prompt Society the central call to action
- [x] Two recurring weekly opportunities are mentioned without invented details
- [x] Theme is `avanade-standard`; brand mode is `template`
- [x] No separate GitHub, Microsoft, co-branded, or generic Office visual identity is introduced
- [x] No PPTX template search or external brand extraction is required
- [x] No unsupported metrics, customer outcomes, schedules, links, screenshots, QR codes, or case studies are introduced
- [x] Every slide manifest includes `visual_reasoning` and `speaker_notes`
- [x] Every non-decorative visual includes alt text and a logical reading order
- [x] Every slide records at least two candidate layouts and the selected layout
- [x] No three consecutive slides use the same layout type
- [x] The complete PowerPoint Copilot master prompt is embedded above

## Conversion Note

This pptmd v1 file is the canonical, auditable deck specification. Open the Avanade Standard target presentation first, then paste the complete **PowerPoint Copilot Prompt** above into PowerPoint Copilot. PowerPoint Copilot should build the nine slides into the currently open presentation. Manually review layout fidelity, content accuracy, speaker notes, accessibility, placeholders, and timing before presenting.