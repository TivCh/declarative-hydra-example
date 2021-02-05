{ nixpkgs, bla }:
let
  pkgs = import nixpkgs {};
  fil = import bla {};
in
{
  hello = pkgs.hello;
  hey = pkgs.runCommand "hey" {} ''
    ls -a
    ls
    cat ${fil}
    touch $out
  '';
}
