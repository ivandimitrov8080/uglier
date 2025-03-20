#!/usr/bin/env node

import { resolveConfig, format } from "prettier";
import { resolve } from "path";
import { readFileSync, writeFileSync } from "fs";
import prettierxml from "@prettier/plugin-xml";

async function main(argv: string[]) {
  const [, , relative] = argv;
  const absolute = resolve(relative);
  const source = readFileSync(absolute, "utf8");

  const options = (await resolveConfig(absolute)) || {};
  const formatted = await format(source, {
    ...options,
    parser: "xml",
    plugins: [prettierxml],
  });

  writeFileSync(absolute, formatted, "utf8");
}

main(process.argv).catch((error) => {
  console.error("Formatting failed:", error);
  process.exit(1);
})
