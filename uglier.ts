#!/usr/bin/env node

import { resolveConfig, format } from "prettier";
import path, { resolve } from "path";
import { readFileSync, writeFileSync } from "fs";
import prettierxml from "@prettier/plugin-xml";
import { $ } from "bun"

const formatFile = async (file: string) => {
  const source = readFileSync(file, "utf8");

  const options = (await resolveConfig(file)) || {};
  const formatted = await format(source, {
    ...options,
    parser: "xml",
    plugins: [prettierxml],
  });

  writeFileSync(file, formatted, "utf8");
}

const preCommit = async () => {
  const files = await $`git diff --cached --name-only`.text()
  console.log(files)
}

async function main(argv: string[]) {
  const [name, filename] = argv;
  switch (name) {
    case "uglier": return formatFile(resolve(filename))
    case "pre-commit": return preCommit()
  }
}

main(
  [
    path.basename(process.execPath),
    ...process.argv.slice(2)
  ]
).catch((error) => {
  console.error("Formatting failed:", error);
  process.exit(1);
})
