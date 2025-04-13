import { resolveConfig, format } from "prettier";
import { readFileSync, writeFile, writeFileSync } from "fs";
import prettierXml from "@prettier/plugin-xml";
import prettierJava from "prettier-plugin-java";
import prettierProperties from "prettier-plugin-properties";
import { $ } from "bun";
import { resolve } from "path";
import opts from "./options.json";

const supportedExtensions = [
  "ts",
  "js",
  "java",
  "xml",
  "sh",
  "Dockerfile",
  "env",
  "json",
];

const options = {
  ...opts,
  plugins: [prettierXml, prettierJava, prettierProperties],
};

const getSupportedFiles = (arr: string[]): string[] => {
  return arr.filter((f) => supportedExtensions.some((e) => f.endsWith(e)));
};

const getCachedFiles = async (): Promise<string[]> => {
  return getSupportedFiles(
    (await $`git diff --cached --name-only`.text())
      .split("\n")
      .filter((f) => f.trim() !== ""),
  );
};

const getTrackedFiles = async (): Promise<string[]> => {
  return getSupportedFiles(
    (await $`git ls-files`.text()).split("\n").filter((f) => f.trim() !== ""),
  );
};

const formatFile = async (filepath: string) => {
  const source = readFileSync(filepath, "utf8");
  return await format(source, { ...options, filepath });
};

export const formatFiles = async (files: string[]) => {
  return Promise.all(
    files.map((f) =>
      formatFile(resolve(f)).then((formatted) =>
        writeFileSync(f, formatted, "utf8"),
      ),
    ),
  );
};

export const formatTrackedFiles = async () => {
  return getTrackedFiles().then((cf) => formatFiles(cf));
};

export const formatCachedFiles = async () => {
  return getCachedFiles().then((cf) => formatFiles(cf));
};

export const generateOptionsForFile = (filepath: string) => {
  resolveConfig(resolve(filepath)).then((cfg) =>
    writeFileSync("./options.json", JSON.stringify(cfg ?? {}), { flag: "w" }),
  );
};
