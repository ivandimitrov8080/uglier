#!/usr/bin/env node

const prettier = require("prettier");
const path = require("path");
const fs = require("fs");

const [, , relative] = process.argv;
absolute = path.resolve(relative)
console.log(absolute)
const source = fs.readFileSync(absolute, "utf8");

prettier.resolveConfig(absolute).then(options => {
  options = options || {};
  options.plugins = [
    require("@prettier/plugin-xml"),
  ];

  const formatted = prettier.format(source, { filepath: absolute, ...options });
  fs.writeFileSync(absolute, formatted, "utf8");
});

