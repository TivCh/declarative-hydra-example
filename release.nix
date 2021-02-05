{ nixpkgs, bla }:
let pkgs = import nixpkgs {};
in
{
  hello = pkgs.hello;
  hey = pkgs.runCommand "hey" {} ''
    ls -a
    ls
    cat ${bla}
    touch $out
  '';
}
