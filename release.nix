{ nixpkgs }:
let pkgs = import nixpkgs {};
in
{
  hello = pkgs.hello;
  hey = pkgs.runCommand "hey" {} ''
    ls -a *
    ${pkgs.nixops}/bin/nixops list
    touch $out
  '';
}
