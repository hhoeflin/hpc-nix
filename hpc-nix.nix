with (import ./nixpkgs {});

let prefix = "/home/hoeflho1/nix";
in
  (nix.override {
    storeDir = "${prefix}/store";
    stateDir = "${prefix}/var/nix";
    confDir = "${prefix}/etc/nix";
  }).overrideAttrs (oldAttrs: rec {
    patches = (oldAttrs.patches or []) ++ [./disable_sandbox.patch];
  })
