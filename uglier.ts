import path from "path";
import {
  formatCachedFilesSync,
  formatFileSync,
  formatTrackedFilesSync,
  generateOptionsForFile,
} from "./util";

const uglier = (argv: string[]) => {
  const [, cmd] = argv
  switch (cmd) {
    case "gen":
      return generateOptionsForFile(argv[2])
    case "all":
      return formatTrackedFilesSync()
    default:
      return formatFileSync(cmd)
  }
}

const preCommit = () => {
  return formatCachedFilesSync();
}

async function main(argv: string[]) {
  const [name] = argv;
  switch (name) {
    case "uglier":
      return uglier(argv)
    case "pre-commit":
      return preCommit()
  }
}

main([path.basename(process.execPath), ...process.argv.slice(2)]).catch(
  (error) => {
    console.error("Formatting failed:", error);
    process.exit(1);
  },
);
