#!/usr/bin/env node

const prettier = require("prettier");
const fs = require("fs");

console.log(process.argv)

const [, filepath] = process.argv;
const source = fs.readFileSync(filepath, "utf8");

prettier.resolveConfig(filepath).then(options => {
  options = options || {};
  options.plugins = [
    require("@prettier/plugin-xml"),
  ];

  const formatted = prettier.format(source, { filepath, ...options });
  fs.writeFileSync(filepath, formatted, "utf8");
});

