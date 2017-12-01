with import <nixpkgs> {};

rec {
  gdax-tt-playground = stdenv.mkDerivation rec {
    name = "tbot-trainer";
    src = ./.;

    buildInputs = [
      nodejs-8_x
      yarn
    ];

    shellHook = ''
      export PATH="$PATH:$(realpath ./node_modules/.bin)"
    '';
  };
}
