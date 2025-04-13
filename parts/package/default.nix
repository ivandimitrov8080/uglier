{
  stdenv,
  yarnConfigHook,
  yarnBuildHook,
  yarnInstallHook,
  fetchYarnDeps,
  nodejs,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "uglier";
  version = "1.0.0";

  src = ../../.;

  yarnOfflineCache = fetchYarnDeps {
    yarnLock = finalAttrs.src + "/yarn.lock";
    hash = "sha256-bXM6Vfc/Jgen3klkqgpDqfWPjvibDlcYvqBw6HUi1sM=";
  };

  nativeBuildInputs = [
    yarnConfigHook
    yarnBuildHook
    yarnInstallHook
    # Needed for executing package.json scripts
    nodejs
  ];

  meta = {
    mainProgram = "uglier";
  };
})
