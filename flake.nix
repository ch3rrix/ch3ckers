{
  description = "C++ development environment for ch3ckers project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
	let
	  overlays = [];
	  pkgs = import nixpkgs { inherit system overlays; };
	in
	with pkgs; {
	  devShells.default = mkShell {
	    nativeBuildInputs = [
	      cmake
	    ];
	    buildInputs = [
	      gtest
	    ];
	  };
	}
      );
}
