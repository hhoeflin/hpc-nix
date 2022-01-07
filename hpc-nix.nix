with (import ./nixpkgs {});

let prefix = "/home/hoeflho1";
in
  (nix.override {
    storeDir = "${prefix}/nix/store";
    stateDir = "${prefix}/nix/var";
    confDir = "${prefix}/nix/etc";
  })
