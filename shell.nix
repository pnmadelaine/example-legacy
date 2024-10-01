{
  sources ? import nix/sources.nix,
  system ? builtins.currentSystem,
}:
let
  pkgs = import sources.nixpkgs { inherit system; };
in
pkgs.mkShell {
  packages = [
    pkgs.niv
    pkgs.nixVersions.nix_2_18
  ];
}
