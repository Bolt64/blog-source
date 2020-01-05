with import <nixpkgs> {};

# Make a new "derivation" that represents our shell
stdenv.mkDerivation {
  name = "blog-source";

  # The packages in the `buildInputs` list will be added to the PATH in our shell
  buildInputs = [
    # cowsay is an arbitary package
    # see https://nixos.org/nixos/packages.html to search for more
    pkgs.gnumake
    pkgs.python3.pkgs.pelican
    pkgs.python3.pkgs.markdown
  ];
}
