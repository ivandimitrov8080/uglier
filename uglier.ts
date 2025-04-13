import path from "path";
import {
  formatCachedFiles,
  formatFiles,
  formatTrackedFiles,
  generateOptionsForFile,
} from "./util";

const uglier = async (argv: string[]) => {
  const [, cmd] = argv;
  switch (cmd) {
    case "gen":
      return generateOptionsForFile(argv[2]);
    case "all":
      return await formatTrackedFiles();
    default:
      return await formatFiles(argv.slice(1));
  }
};

const preCommit = async () => {
  return await formatCachedFiles();
};

async function main(argv: string[]) {
  const [name] = argv;
  switch (name) {
    case "uglier":
      return await uglier(argv);
    case "pre-commit":
      return await preCommit();
  }
}

main([path.basename(process.execPath), ...process.argv.slice(2)]);
