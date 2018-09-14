######
#
# Author: Brandon Barker
#
######

with import <nixpkgs> { };
stdenv.mkDerivation {
  name = "mazes-monad-stack-env";
  buildInputs = [
    gmp
  ];
  shellHook = ''
    export LD_LIBRARY_PATH=${gmp}/lib::$LD_LIBRARY_PATH
  '';  
}

