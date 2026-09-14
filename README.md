# BS0030 Programming Languages

**Programming paradigms through representative languages**

Riga Business School · Riga Technical University (RTU)

| | |
| --- | --- |
| **Course** | BS0030 Programming Languages |
| **Academic year** | 2026/2027, Fall semester |
| **Credit points** | 8 CP |
| **Language of instruction** | English |
| **Weekly format** | 2 academic hours of lecture + 2 academic hours of practical work |
| **Instructor** | Valdis Saulespurens, Lecturer, RTU |
| **Contact** | [valdis.saulespurens@rtu.lv](mailto:valdis.saulespurens@rtu.lv) |

[Full course syllabus](syllabus/BS0030_Programming_Languages_Syllabus_Fall_2026.md)

## Current practical work

### Week 2 — Syntax, BNF/EBNF, Parsing, and ASTs

Week 1 concentrated on introductory reading, language history, and course orientation. **Week 2 is the first hands-on programming lab.**

➡️ **[Open the Week 2 Lab](labs/week02/README.md)**

The lab uses Python in the **BS0030 Core** GitHub Codespace.

## Start here: fork once, use your fork all semester

GitHub Codespaces is the officially supported development environment for BS0030.

The course workflow is:

```text
PUBLIC COURSE REPOSITORY
        ↓
      Fork once
        ↓
YOUR-GITHUB-USERNAME/RBS_BS0030_Programming_Languages
        ↓
Create Codespace from YOUR fork
        ↓
Select the environment required for the current week
        ↓
Complete the lab in your fork
        ↓
Commit and push your work
        ↓
Sync new instructor material into the same fork later
```

> **Codespace = disposable language laboratory.**  
> **GitHub fork = permanent course portfolio.**

### First setup for Week 2

1. Sign in to GitHub.
2. Open the public course repository.
3. Click **Fork** and create your own fork under your GitHub account.
4. Open **your fork**, not the original `ValRCS` repository.
5. Create a Codespace for your fork.
6. Select the **BS0030 Core — Python, C++ and JavaScript** Dev Container configuration.
7. Wait for VS Code in the browser to finish building the environment.
8. In the terminal, from the repository root, run:

```bash
bash scripts/check-core-environment.sh
```

9. Continue with the [Week 2 Lab](labs/week02/README.md).

Local development is allowed, but local setup is the student's responsibility. Assessed code must run in the designated course Codespace.

## Keeping your fork up to date

New lecture material, labs, and environment configurations will be added to the public repository during the semester.

Before starting a newly released week:

1. open your fork on GitHub;
2. use **Sync fork** / **Update branch** to bring in upstream course changes;
3. resolve any conflicts before beginning new work;
4. open or rebuild the Codespace required for that week's language environment.

To reduce conflicts, instructor-owned files and student-owned files are separated where practical. In Week 2, for example:

```text
Instructor-managed:
labs/week02/README.md
labs/week02/assignment.md
labs/week02/starter/
labs/week02/examples/

Student-managed:
labs/week02/work/
```

Do not edit instructor-managed starter files unless the lab explicitly tells you to do so.

## About the course

Programming Languages examines how different languages express computation and how their design choices affect the programs we write. The course is **paradigm-first rather than language-first**: representative languages are used to explore different ways of organizing state, functions, inference, relations, objects, communication, and asynchronous events.

The objective is not to master seven languages in one semester. It is to develop the conceptual vocabulary and practical experience needed to learn unfamiliar languages, compare their strengths and limitations, and select an appropriate programming model for a problem.

The course begins with language design, history, syntax, semantics, and an imperative baseline. It then examines functional, logic, relational, object-oriented, concurrent, and event-driven programming.

### Prerequisites

The course is intended for second- and third-year bachelor students who have completed introductory programming and Algorithms. Students should be comfortable with Python or another general-purpose language, including functions, collections, control flow, basic objects, and elementary debugging. BS0013 Data Structures with C++ is strongly recommended but may be taken concurrently.

### Learning objectives

By the end of the course, students should be able to explain and compare programming-language constructs; read and write simple BNF/EBNF grammars; reason about types, scope, bindings, and evaluation; implement small programs in substantially different paradigms; and justify language and design choices using evidence from program behavior.

## Semester structure and estimated schedule

| Week | Date (Monday) | Topic | Main language or focus |
| ---: | --- | --- | --- |
| 1 | 7 September 2026 | Language overview and imperative baseline | Python, C++, language history and implementation |
| 2 | 14 September 2026 | Syntax, semantics, and parsing | BNF/EBNF, tokens, ASTs, tiny parser/interpreter |
| 3 | 21 September 2026 | Functional Programming I | Clojure: functions, immutability, recursion |
| 4 | 28 September 2026 | Functional Programming II | Clojure: persistent data, closures, composition, effects |
| 5 | 5 October 2026 | Logic Programming I | Prolog: facts, rules, unification, backtracking |
| 6 | 12 October 2026 | Logic Programming II | Prolog: recursion, search, constraints |
| 7 | 19 October 2026 | Declarative / relational programming | SQL: relations, joins, aggregation, subqueries |
| **8** | **26 October 2026** | **Midterm and consolidation** | **Assessment of Weeks 1–7** |
| 9 | 2 November 2026 | Object-Oriented Programming I | Kotlin: classes, interfaces, encapsulation, polymorphism |
| 10 | 9 November 2026 | Object-Oriented Programming II / Type Systems | Kotlin: generics, nullability, data and sealed classes |
| 11 | 16 November 2026 | Concurrency I | Go: goroutines, channels, message passing |
| 12 | 23 November 2026 | Concurrency II | Go: worker pools, cancellation, coordination |
| 13 | 30 November 2026 | Event-Driven Programming | JavaScript / TypeScript: events, callbacks, event loop |
| 14 | 7 December 2026 | Asynchronous Programming and Synthesis | JavaScript / TypeScript: promises, async/await, comparison |

**Rust is optional supplementary material and is not part of the core curriculum.**

## Development environments

The repository uses several Dev Container configurations during the semester rather than one oversized environment containing every language.

The first published environment is:

```text
.devcontainer/
└── core/
    ├── Dockerfile
    └── devcontainer.json
```

**Core** is used for Week 2 and supports Python, C/C++, Node.js, Git, and SQLite. Later paradigm blocks will add their own environments, such as Clojure/JDK, Prolog, Kotlin, Go, and JavaScript/TypeScript.

Students keep the same GitHub fork even when they create a new Codespace for a different language block.

## Repository structure

```text
RBS_BS0030_Programming_Languages/
├── README.md
├── LICENSE
├── syllabus/
├── .devcontainer/
│   └── core/
├── scripts/
│   └── check-core-environment.sh
├── lectures/
├── labs/
│   └── week02/
│       ├── README.md
│       ├── assignment.md
│       ├── grammar-exercises.md
│       ├── examples/
│       ├── starter/
│       └── work/
├── assignments/
└── resources/
```

Materials are released progressively during the semester.

## Teaching and assessment

Each week normally combines a lecture, practical experimentation, and comparison with previously studied paradigms.

| Assessment component | Weight |
| --- | ---: |
| Programming assignments | 40% |
| Weekly quizzes and participation | 10% |
| Midterm examination | 20% |
| Comprehensive final examination component | 20% |
| Timed cumulative final quiz | 10% |
| **Total** | **100%** |

Moodle is the authoritative location for announcements, deadlines, quizzes, grades, and official submissions. A GitHub commit or repository link alone is not an official submission unless the assignment explicitly says so.

## Reading and reference materials

Students have semester access through RBS/Pearson to Robert W. Sebesta, *Concepts of Programming Languages*, 12th edition. Global Edition pagination may differ, so readings will normally be identified by chapter or section.

Useful official references include:

- [Clojure](https://clojure.org/) and [ClojureDocs](https://clojuredocs.org/)
- [SWI-Prolog](https://www.swi-prolog.org/)
- [SQLite documentation](https://www.sqlite.org/docs.html)
- [Kotlin documentation](https://kotlinlang.org/docs/home.html)
- [Go documentation](https://go.dev/doc/)
- [MDN JavaScript guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
- [TypeScript documentation](https://www.typescriptlang.org/docs/)
- [GitHub Codespaces documentation](https://docs.github.com/en/codespaces)

## Moodle and course communication

The RTU ORTUS Moodle course is authoritative for announcements, deadlines, quizzes, grades, and official submissions. This repository provides version-controlled student materials and code.

If a repository description and a current Moodle announcement differ on an assessment requirement, follow the Moodle announcement and contact the instructor if clarification is needed.
