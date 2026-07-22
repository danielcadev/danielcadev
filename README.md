# Daniel Castrillon

**Software Engineer | Linux & Open Source | Rust Security Tooling | Application Security**

[Portfolio](https://danielcadev.github.io) | [Email](mailto:daniel.ca.pe207@gmail.com) | [Secure](https://github.com/usesecure) | Madrid, Colombia

I build and harden production software across Linux tooling, Rust security infrastructure, full-stack platforms, cloud delivery, and application security. My work combines upstream open-source contributions, technical ownership of production systems, and disciplined AI-assisted engineering.

I use coding agents as engineering tools, with typed contracts, automated verification, authorization review, and human validation around production changes. The goal is not faster code generation by itself; it is reliable software with evidence behind it.

## Current Focus

- Linux desktop reliability, packaging, update workflows, and cross-distribution compatibility.
- Local-first static analysis, reproducible security measurement, and evidence contracts in Rust.
- Responsible upstream remediation of security defects in actively maintained open-source projects.
- Security review and hardening for AI-generated and rapidly evolving codebases.
- Platform architecture across authentication, data, media, administration, and cloud delivery.
- Reusable developer tooling with measurable tests and explicit operational boundaries.

## Selected Engineering Work

| Project | Engineering scope | Evidence |
| --- | --- | --- |
| Codex Desktop Linux | Ongoing upstream collaboration on Linux reliability, Rust updater inputs, per-user browser integration, CI hardening, dependency maintenance, and regression coverage | [Merged contributions](https://github.com/ilysenko/codex-desktop-linux/pulls?q=is%3Apr+author%3Adanielcadev+is%3Amerged) |
| UseSecure | Local-first Rust analyzer, blinded and evidence-sealed benchmark infrastructure, and an Open Agent Skill for security review and hardening | [Engine v0.1.8](https://github.com/usesecure/secure-engine/releases/tag/v0.1.8) · [Bench](https://github.com/usesecure/secure-bench) · [Skill](https://github.com/usesecure/secure-skill) |
| CMS Nova | Reusable headless CMS foundation with typed, schema-driven content, hybrid persistence, template tooling, and role-based administration | [cms-nova-template](https://github.com/danielcadev/cms-nova-template) |
| Production platforms | Architecture and delivery across booking, B2B operations, publishing, localization, authentication, PostgreSQL, AWS-backed media, and deployment workflows | [Mitiquete](https://mitiqueteonline.com) · [Conociendo Colombia](https://conociendocolombia.com) · [TripEuropa](https://tripeuropa.eu) |

## Open Source Contribution

I am an ongoing contributor to [codex-desktop-linux](https://github.com/ilysenko/codex-desktop-linux), working across Rust, JavaScript, shell tooling, Nix dependencies, and GitHub Actions.

- Repaired updater fallback inputs and per-user browser-integration socket discovery.
- Hardened privileged CI actions and updated vulnerable native-module build dependencies.
- Added regression coverage and validated changes through Rust tests, script tests, and Fedora package rebuilds.

I also perform evidence-backed security reviews of active open-source applications and submit focused upstream remediations.

- Reproduced an API-key boundary bypass in the published open-wa v5 API package that exposed management, integration, QR, and browser-control surfaces.
- Submitted [open-wa/wa-automate-nodejs#3388](https://github.com/open-wa/wa-automate-nodejs/pull/3388) with a minimal boundary fix, regression tests, a signed commit, DCO, and a Changesets release entry.
- Keep findings scoped to demonstrated impact, preserve compatibility where safe, and separate scanner output from manual validation.

## Security And Architecture

- Documented and drove remediation of 24 high-severity or critical findings across production systems.
- Designed Zero-Trust RBAC controls across Server Actions and REST endpoints.
- Developed a capability- and invariant-centered review method for AI-assisted changes.
- Published Secure Engine v0.1.8 with reproducible Fedora packaging, signed release provenance, deterministic analysis, and local-first execution.
- Built Secure Bench through independently frozen holdouts, one-shot scanner campaigns, immutable evidence, post-open root-cause analysis, and corrected scoring contracts.
- Delivered an invited talk at the Max Planck Institute for Security and Privacy on structural security risks in AI-assisted software systems.
- Review focus includes authentication, authorization dominance, tenant isolation, secrets, storage, webhooks, payments, and fail-open behavior.

Benchmark results are reported with lane boundaries and limitations intact; they are evidence for engineering decisions, not broad superiority claims.

## Engineering Stack

- **Languages:** TypeScript, Rust, JavaScript, Go, Python, C#, SQL, Java, C, C++
- **Web and data:** Next.js, React, Astro, Node.js, PostgreSQL, Prisma, Tailwind CSS
- **Systems and delivery:** Linux, Fedora, Docker, Git, pnpm/Turborepo, Vercel, Coolify, Hetzner
- **Cloud:** AWS S3, SES, VPS operations, media and deployment workflows
- **Security:** Zero-Trust RBAC, authorization-boundary review, Server Action and API security, secrets, structural audits
- **AI engineering:** OpenAI Codex/GPT, Claude Code, Gemini, OpenRouter, context construction, task decomposition, failure-mode analysis

## Evidence And Scale

A conservative July 2026 audit measures **370k+ unique, non-generated source-code lines across 21 maintained repositories**, including **55k+ lines of Rust**. This is supporting context, not a productivity score. It excludes dependencies, lockfiles, documentation, generated and minified files, build output, and duplicate files.

[Read the measurement methodology, exclusions, and aggregate breakdown.](./CODEBASE_METRICS.md)

## Background

I lead software architecture and AI-assisted engineering at Mitiquete SAS while contributing to open-source Linux tooling and developing public security-review infrastructure.

Spanish is my native language, and I work professionally in English.

## Contact

- Portfolio: [danielcadev.github.io](https://danielcadev.github.io)
- Email: [daniel.ca.pe207@gmail.com](mailto:daniel.ca.pe207@gmail.com)
- GitHub: [danielcadev](https://github.com/danielcadev)
