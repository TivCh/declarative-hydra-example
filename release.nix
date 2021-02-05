{ nixpkgs }:
let
  pkgs = import nixpkgs {};
in
{
  hello = pkgs.hello;
  hey = pkgs.runCommand "hey" {} ''
    pwd
    ls -a
    ls
    touch $out
  '';
}
