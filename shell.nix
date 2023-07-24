with import <nixpkgs> {};
mkShell {
buildInputs = [libgccjit];
  nativeBuildInputs = [ddd nix-index pkg-config cmake valgrind gdb];
  shellHook = ''
  export LIBS=${pkgs.libgccjit}/lib/libgomp.so.1
  '';

}
