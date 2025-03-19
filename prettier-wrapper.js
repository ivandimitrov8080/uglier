#!/usr/bin/env node

import { resolveConfig, format } from "prettier";
import { resolve } from "path";
import { readFileSync, writeFileSync } from "fs";
import prettierxml from "@prettier/plugin-xml";

const [, , relative] = process.argv;
const absolute = resolve(relative);
const source = readFileSync(absolute, "utf8");

resolveConfig(absolute).then(async (options) => {
  options = options || {};
  options.plugins = [prettierxml];

  const formatted = await format(source, { parser: "xml", ...options });
  writeFileSync(absolute, formatted, "utf8");
});
