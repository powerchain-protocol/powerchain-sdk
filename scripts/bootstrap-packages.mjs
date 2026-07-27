import { promises as fs } from "node:fs";
import path from "node:path";

const ROOT = process.cwd();

const WORKSPACES = ["packages", "apps"];

const PACKAGE_JSON = (name, isApp = false) => ({
  name: isApp ? name : `@powerchain/${name}`,
  version: "0.1.0-beta",
  private: isApp,
  type: "module",
  sideEffects: false,
  main: "./dist/index.js",
  module: "./dist/index.js",
  types: "./dist/index.d.ts",
  exports: {
    ".": {
      types: "./dist/index.d.ts",
      import: "./dist/index.js"
    }
  },
  files: ["dist"],
  scripts: {
    build: "tsup",
    dev: "tsup --watch",
    clean: "rimraf dist",
    lint: "biome check .",
    "lint:fix": "biome check --write .",
    format: "biome format --write .",
    typecheck: "tsc --noEmit",
    test: "vitest"
  }
});

const TSCONFIG = {
  extends: "../../tsconfig.base.json",
  compilerOptions: {
    rootDir: "src",
    outDir: "dist"
  },
  include: ["src"]
};

const README = (name) => `# ${name}

Part of the **PowerChain** monorepo.

## Development

\`\`\`bash
pnpm build
pnpm test
pnpm lint
\`\`\`
`;

const INDEX = (name) => `/**
 * ${name}
 * PowerChain
 */

export const version = "0.1.0-beta";
`;

async function exists(file) {
  try {
    await fs.access(file);
    return true;
  } catch {
    return false;
  }
}

async function writeIfMissing(file, contents) {
  if (await exists(file)) return;

  await fs.writeFile(file, contents);

  console.log("✓", path.relative(ROOT, file));
}

async function bootstrapWorkspace(workspace) {
  const root = path.join(ROOT, workspace);

  if (!(await exists(root))) return;

  const entries = (await fs.readdir(root, {
    withFileTypes: true
  }))
    .filter((e) => e.isDirectory())
    .sort((a, b) => a.name.localeCompare(b.name));

  for (const entry of entries) {
    const isApp = workspace === "apps";

    const pkg = path.join(root, entry.name);

    await fs.mkdir(path.join(pkg, "src"), { recursive: true });
    await fs.mkdir(path.join(pkg, "test"), { recursive: true });
    await fs.mkdir(path.join(pkg, "examples"), {
      recursive: true
    });

    await writeIfMissing(
      path.join(pkg, "package.json"),
      JSON.stringify(
        PACKAGE_JSON(entry.name, isApp),
        null,
        2
      )
    );

    await writeIfMissing(
      path.join(pkg, "tsconfig.json"),
      JSON.stringify(TSCONFIG, null, 2)
    );

    await writeIfMissing(
      path.join(pkg, "README.md"),
      README(entry.name)
    );

    await writeIfMissing(
      path.join(pkg, "CHANGELOG.md"),
      "# Changelog\n"
    );

    await writeIfMissing(
      path.join(pkg, "LICENSE"),
      "Apache-2.0\n"
    );

    await writeIfMissing(
      path.join(pkg, ".gitignore"),
      "dist\ncoverage\nnode_modules\n"
    );

    await writeIfMissing(
      path.join(pkg, "src/index.ts"),
      INDEX(entry.name)
    );
  }
}

for (const workspace of WORKSPACES) {
  await bootstrapWorkspace(workspace);
}

console.log("\n✨ PowerChain workspace bootstrapped.");