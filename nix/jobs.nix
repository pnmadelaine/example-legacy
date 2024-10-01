{
  sources ? import ./sources.nix,
  system ? "x86_64-linux",
  pkgs ? import sources.nixpkgs { inherit system; },
}:
{
  ${system} = {
    inherit (pkgs) hello;
  };
}
