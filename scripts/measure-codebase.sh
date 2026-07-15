#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -eq 0 ]; then
  echo "usage: $0 /path/to/repository [...]" >&2
  exit 2
fi

scc_bin="${SCC_BIN:-scc}"

if ! command -v "$scc_bin" >/dev/null 2>&1; then
  echo "scc is required; set SCC_BIN if it is not in PATH" >&2
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "jq is required" >&2
  exit 1
fi

"$scc_bin" \
  --format json2 \
  --no-cocomo \
  --no-complexity \
  --no-gen \
  --no-min \
  --no-duplicates \
  --exclude-dir node_modules,.next,dist,build,coverage,out,target,vendor,.turbo,.vercel,.open-next,generated \
  --include-ext ts,tsx,js,jsx,py,java,c,cc,cpp,cxx,h,hh,hpp,cs,php,go,rs,astro,vue,svelte,sql,prisma,sh,bash,css,scss,html \
  "$@" \
  | jq '{
      source_files: ([.languageSummary[].Count] | add // 0),
      code_lines: ([.languageSummary[].Code] | add // 0),
      comment_lines: ([.languageSummary[].Comment] | add // 0),
      blank_lines: ([.languageSummary[].Blank] | add // 0),
      physical_lines: ([.languageSummary[].Lines] | add // 0),
      languages: [
        .languageSummary[]
        | {name: .Name, files: .Count, code_lines: .Code}
      ]
    }'
