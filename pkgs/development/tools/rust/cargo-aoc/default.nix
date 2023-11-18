{ pkgs, lib, rustPlatform, fetchCrate }:

rustPlatform.buildRustPackage rec {
  pname = "cargo-aoc";
  version = "0.3.4";

  src = fetchCrate {
    inherit pname version;
    sha256 = "sha256-vTwHTpDIa+oKVctma1mynsPbeBQnMvc0PVwlplFTMYI=";
  };

  cargoSha256 = "sha256-tunv5MsQttASDB15P6NsjohNvzgaIyJCocZPq17TQlU=";

  buildInputs = [
    pkgs.openssl
  ];
  nativeBuildInputs = with pkgs; [
    pkgs.pkg-config
  ];
  meta = with lib; {
    description = "a simple CLI tool that aims to be a helper for the Advent of Code";
    homepage = "https://github.com/gobanos/cargo-aoc";
    license = with licenses; [ mit asl20 ];
    maintainers = with maintainers; [];
  };
}
