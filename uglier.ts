import path, { resolve } from "path";
import {
  formatCachedFilesSync,
  formatFileSync,
  formatTrackedFilesSync,
} from "./util";

async function main(argv: string[]) {
  const [name, filename] = argv;
  switch (name) {
    case "uglier":
      return filename === "all"
        ? formatTrackedFilesSync()
        : formatFileSync(resolve(filename));
    case "pre-commit":
      return formatCachedFilesSync();
  }
}

main([path.basename(process.execPath), ...process.argv.slice(2)]).catch(
  (error) => {
    console.error("Formatting failed:", error);
    process.exit(1);
  },
);
