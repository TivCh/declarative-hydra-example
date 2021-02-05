{ nixpkgs }:
let pkgs = import nixpkgs {};
in
{
  hello = pkgs.hello;
  hey = pkgs.runCommand "hey" {} ''
    ls /
    nixops list
    touch $out
  '';
}
