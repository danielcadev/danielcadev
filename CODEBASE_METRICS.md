# Codebase Scale Methodology

This document explains the codebase-scale figure used in my GitHub profile. Lines of code are context about the systems I have owned and maintained, not a measure of engineering quality or individual productivity.

## July 22, 2026 Snapshot

The audit covered the same cohort of 21 repositories maintained across my GitHub account and the UseSecure organization as the previous July snapshot. Every repository was measured from a clean, shallow checkout of its default branch, avoiding local build output and uncommitted work.

The counter was `scc` 3.7.0. The official Linux x86-64 release archive was verified before use with SHA-256 `3d9d65b00ca874c2b29151abe7e1480736f5229edc3ce8e4b2791460cdfabf5a`.

### Conservative Globally Deduplicated Result

| Metric | Result |
| --- | ---: |
| Unique source files | 3,527 |
| Code lines | 428,566 |
| Comment lines | 11,822 |
| Blank lines | 34,871 |
| Physical lines | 475,259 |

The profile rounds the code result down to **420k+**.

### Per-Repository Aggregate

This view deduplicates files inside each repository and then adds the repository totals. Shared files that appear in more than one repository may therefore remain in the aggregate.

| Repository group | Repositories | Source files | Code lines |
| --- | ---: | ---: | ---: |
| Production travel platforms | 5 | 2,006 | 275,187 |
| Reusable CMS and platform foundations | 2 | 280 | 29,592 |
| Desktop application | 1 | 99 | 8,718 |
| Security tooling | 3 | 1,233 | 122,887 |
| Other owned applications and earlier work | 10 | 270 | 18,958 |
| **Total** | **21** | **3,888** | **455,342** |

## Language Breakdown

The globally deduplicated result contains:

| Language | Files | Code lines |
| --- | ---: | ---: |
| TypeScript | 2,546 | 283,633 |
| Rust | 165 | 100,477 |
| Python | 56 | 10,800 |
| C# | 98 | 8,718 |
| JavaScript | 379 | 6,421 |
| CSS | 25 | 5,755 |
| Go | 23 | 4,596 |
| Astro | 30 | 2,801 |
| JSX | 122 | 1,608 |
| HTML | 7 | 1,410 |
| SQL | 55 | 1,386 |
| Shell | 18 | 919 |
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
