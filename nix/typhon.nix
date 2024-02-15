{sources ? import ./sources.nix}: let
  typhonLib = (import sources.typhon).lib;
in
  typhonLib.dummy.mkProject {
    url = "github:typhon-ci/example-classic";
    flake = false;
    refs = ["main"];
    title = "Typhon Classic Example";
    description = "An example of a Typhon project using niv";
    homepage = "https://github.com/typhon-ci/example-classic";
  }
