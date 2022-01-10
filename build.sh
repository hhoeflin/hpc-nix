nix-build hpc-nix.nix -o nix-intermediate
./nix-intermediate/bin/nix-build hpc-nix.nix -o nix-final
# ./nix-final/bin/nix copy ./nix-final --no-check-sigs --to /tmp/copy-me-to-server
NIX_PATH=$(readlink nix-final) envsubst '$NIX_PATH' < install.in > install
