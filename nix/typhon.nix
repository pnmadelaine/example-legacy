{sources ? import ./sources.nix}: let
  typhonLib = (import sources.typhon).lib;
in
  typhonLib.mkSimpleProject {
    url = "github:typhon-ci/example-legacy";
    flake = false;
    refs = ["main"];
    title = "Typhon Legacy Example";
    description = "An example of a Typhon project using niv";
    homepage = "https://github.com/typhon-ci/example-legacy";
  }
