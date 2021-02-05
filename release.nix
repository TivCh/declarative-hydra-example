{ nixpkgs }:
let pkgs = import nixpkgs {};
in
{
  hello = pkgs.hello;
  hey = pkgs.runCommand "hey" {} ''
    ls
    touch $out
  '';
}
