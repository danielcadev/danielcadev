# Codebase Scale Methodology

This document explains the codebase-scale figure used in my GitHub profile. Lines of code are context about the systems I have owned and maintained, not a measure of engineering quality or individual productivity.

## July 2026 Snapshot

The audit covered 18 repositories owned by my GitHub account. Seven active repositories were measured from local worktrees; the remaining repositories were measured from shallow default-branch checkouts containing source files only.

The counter was `scc` 3.7.0.

### Conservative Globally Deduplicated Result

| Metric | Result |
| --- | ---: |
| Unique source files | 2,407 |
| Code lines | 309,389 |
| Comment lines | 6,078 |
| Blank lines | 28,934 |
| Physical lines | 344,401 |

The profile rounds the code result down to **300k+**.

### Per-Repository Aggregate

This view deduplicates files inside each repository and then adds the repository totals. Shared files that appear in more than one repository may therefore remain in the aggregate.

| Repository group | Repositories | Source files | Code lines |
| --- | ---: | ---: | ---: |
| Production travel platforms | 5 | 1,958 | 269,743 |
| Reusable CMS and platform foundations | 2 | 280 | 29,592 |
| Desktop application | 1 | 99 | 8,718 |
| Other owned applications and earlier work | 10 | 264 | 18,676 |
| **Total** | **18** | **2,601** | **326,729** |

## Language Breakdown

The globally deduplicated result contains:

| Language | Files | Code lines |
| --- | ---: | ---: |
| TypeScript | 2,136 | 280,552 |
| C# | 98 | 8,718 |
| CSS | 25 | 6,918 |
| Go | 16 | 4,427 |
| JavaScript | 44 | 3,104 |
| Astro | 26 | 2,171 |
| HTML | 7 | 1,410 |
| SQL | 52 | 1,156 |
| Python | 3 | 933 |

## Included Source Types

The audit includes application and systems source files such as TypeScript, JavaScript, Go, Python, C#, SQL, Astro, HTML, and CSS. Structured configuration and documentation are not included in the published code figure.

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
