# save this as shell.nix
{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    (with dotnetCorePackages; combinePackages [
      sdk_7_0
    ])
  ];

}
