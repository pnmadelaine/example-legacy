{
  sources ? import nix/sources.nix,
  system ? builtins.currentSystem,
}:
let
  pkgs = import sources.nixpkgs { inherit system; };
in
pkgs.mkShell {
  packages = [ pkgs.niv ];
}
