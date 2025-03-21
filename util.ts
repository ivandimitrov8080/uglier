import { resolveConfig, format } from "prettier";
import { readFileSync, writeFileSync } from "fs";
import prettierXml from "@prettier/plugin-xml";
import prettierJava from "prettier-plugin-java";
import prettierProperties from "prettier-plugin-properties";
import { $, file } from "bun";
import { resolve } from "path";

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
  ...readFileSync("./options.json"),
  plugins: [prettierXml, prettierJava, prettierProperties],
};

const formatFilesSync = (files: string[]) => {
  Promise.all(files.map((f) => formatFile(resolve(f)))).catch((err) =>
    console.log(err),
  );
};

export const getSupportedFiles = (arr: string[]): string[] => {
  return arr.filter((f) => supportedExtensions.some((e) => f.endsWith(e)));
};

export const getCachedFiles = async (): Promise<string[]> => {
  return getSupportedFiles(
    (await $`git diff --cached --name-only`.text())
      .split("\n")
      .filter((f) => f.trim() !== ""),
  );
};

export const getTrackedFiles = async (): Promise<string[]> => {
  return getSupportedFiles(
    (await $`git ls-files`.text()).split("\n").filter((f) => f.trim() !== ""),
  );
};

export const formatTrackedFilesSync = () => {
  getTrackedFiles().then((cf) => formatFilesSync(cf));
};

export const formatCachedFilesSync = () => {
  getCachedFiles().then((cf) => formatFilesSync(cf));
};

export const formatFile = async (filepath: string) => {
  const source = readFileSync(filepath, "utf8");

  const formatted = await format(source, { ...options, filepath });

  writeFileSync(filepath, formatted, "utf8");
};

export const formatFileSync = (filepath: string) =>
  formatFile(filepath).catch((e) => console.log(e));

export const generateOptionsForFile = (filepath: string) => {
  resolveConfig(resolve(filepath)).then(cfg => writeFileSync("./options.json", JSON.stringify((cfg ?? {})), { flag: "w" }))
}
