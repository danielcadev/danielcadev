# Codebase Scale Methodology

This document explains the codebase-scale figure used in my GitHub profile. Lines of code are context about the systems I have owned and maintained, not a measure of engineering quality or individual productivity.

## July 2026 Snapshot

The audit covered 21 repositories maintained across my GitHub account and the UseSecure organization. Ten active repositories were measured from local worktrees; the remaining repositories were measured from shallow default-branch checkouts containing source files only.

The counter was `scc` 3.7.0.

### Conservative Globally Deduplicated Result

| Metric | Result |
| --- | ---: |
| Unique source files | 3,094 |
| Code lines | 374,221 |
| Comment lines | 10,092 |
| Blank lines | 32,498 |
| Physical lines | 416,811 |

The profile rounds the code result down to **370k+**.

### Per-Repository Aggregate

This view deduplicates files inside each repository and then adds the repository totals. Shared files that appear in more than one repository may therefore remain in the aggregate.

| Repository group | Repositories | Source files | Code lines |
| --- | ---: | ---: | ---: |
| Production travel platforms | 5 | 1,515 | 224,916 |
| Reusable CMS and platform foundations | 2 | 280 | 29,592 |
| Desktop application | 1 | 99 | 8,718 |
| Security tooling | 3 | 731 | 64,550 |
| Other owned applications and earlier work | 10 | 725 | 64,178 |
| **Total** | **21** | **3,350** | **391,954** |

## Language Breakdown

The globally deduplicated result contains:

| Language | Files | Code lines |
| --- | ---: | ---: |
| TypeScript | 2,442 | 285,291 |
| Rust | 87 | 55,394 |
| C# | 98 | 8,718 |
| CSS | 25 | 6,185 |
| JavaScript | 274 | 5,226 |
| Go | 23 | 4,596 |
| Python | 27 | 3,535 |
| Astro | 24 | 2,317 |
| HTML | 6 | 1,409 |
| SQL | 52 | 1,156 |
| JSX | 31 | 289 |
| Shell | 2 | 63 |
| Java | 3 | 42 |

## Included Source Types

The audit includes application and systems source files such as TypeScript, Rust, JavaScript, Go, Python, C#, SQL, Astro, HTML, and CSS. Structured configuration and documentation are not included in the published code figure.

## Exclusions

- Dependencies and vendored code, including `node_modules` and `vendor`.
- Build and framework output, including `.next`, `dist`, `build`, `out`, `.turbo`, `.vercel`, and `.open-next`.
- Generated code, minified files, coverage output, and compiled targets.
- Package-manager lockfiles.
- Markdown documentation and prose.
- JSON, YAML, TOML, and other structured configuration.
- Assets such as images, fonts, videos, PDFs, and design files.
- Files detected as duplicates in the globally deduplicated result.

## Reproduction

Anyone with access to the repositories can reproduce the measurement by installing `scc` 3.7.0 and `jq`, then passing repository directories to the included script:

```bash
scripts/measure-codebase.sh /path/to/repository-a /path/to/repository-b
```

Most repositories are private because they contain client or production code. The methodology and aggregate results are public; the underlying private source is not.
