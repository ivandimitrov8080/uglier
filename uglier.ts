import path, { resolve } from "path";
import { formatFileSync, formatTrackedFilesSync } from "./util";

const preCommit = async () => {};

async function main(argv: string[]) {
  const [name, filename] = argv;
  switch (name) {
    case "uglier":
      return filename === "git"
        ? formatTrackedFilesSync()
        : formatFileSync(resolve(filename));
    case "pre-commit":
      return preCommit();
  }
}

main([path.basename(process.execPath), ...process.argv.slice(2)]).catch(
  (error) => {
    console.error("Formatting failed:", error);
    process.exit(1);
  },
);
