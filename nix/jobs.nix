{sources ? import ./sources.nix}: let
  system = "x86_64-linux";
  pkgs = import sources.nixpkgs {inherit system;};
in {
  ${system} = {
    inherit (pkgs) hello;
  };
}
