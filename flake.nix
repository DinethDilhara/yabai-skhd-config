{
  description = "Setup for yabai/skhd config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages.default = pkgs.writeShellApplication {
          name = "setup-mac-wm";
          runtimeInputs = with pkgs; [ coreutils bash brew ];
          text = ''
            echo "Installing yabai & skhd if missing..."
            if ! command -v yabai >/dev/null; then
              brew install koekeishiya/formulae/yabai
            fi
            if ! command -v skhd >/dev/null; then
              brew install koekeishiya/formulae/skhd
            fi

            echo "Copying config files to ~/.config..."
            mkdir -p ~/.config/skhd ~/.config/yabai
            cp ${./skhd/.config/skhdrc} ~/.config/skhd/skhdrc
            cp ${./yabai/.config/yabairc} ~/.config/yabai/yabairc
            chmod 644 ~/.config/skhd/skhdrc ~/.config/yabai/yabairc

            echo "Restarting services..."
            brew services restart yabai
            brew services restart skhd

            echo "Config applied successfully!"
          '';
        };
      });
}
