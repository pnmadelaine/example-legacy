{
  sources ? import ./sources.nix,
  system ? "x86_64-linux",
  pkgs ? import sources.nixpkgs { inherit system; },
}:
{
  inherit (pkgs) hello;
}
