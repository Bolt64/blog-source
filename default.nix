with (import <nixpkgs> {});
derivation {
  name = "blog-source";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  inherit gnumake coreutils;
  pelican = python3.pkgs.pelican;
  markdown = python3.pkgs.markdown;
  src = /home/sayantan/Sync/blog/source;
  system = builtins.currentSystem;
}
