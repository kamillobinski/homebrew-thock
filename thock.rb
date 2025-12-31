class Thock < Formula
  desc "Thock your mac keyboard"
  homepage "https://github.com/kamillobinski/thock"
  url "https://github.com/kamillobinski/thock/releases/download/1.18.1/Thock-1.18.1.zip"
  sha256 "bc417624936a461078178a0463c969a7c8a295986586faa5cd58be015b471738"
  version "1.18.1"

  def install
    prefix.install "Thock.app"
    bin.install "thock-cli" => "thock-cli"

    # Optional: Keep your launcher CLI
    (bin/"thock").write <<~EOS
      #!/bin/bash
      if [[ "$1" == "--install" ]]; then
        echo "Copying Thock.app to /Applications..."
        cp -R "#{opt_prefix}/Thock.app" /Applications/Thock.app && \
        echo "Done! You can now launch it from Spotlight or Launchpad."
      elif [[ "$1" == "--version" ]]; then
        echo "Thock version #{version}"
      else
        open "#{opt_prefix}/Thock.app"
      fi
    EOS
  end

  def caveats
    <<~EOS
    Thock is installed!

    To launch the app:
      thock

    To move it to your Applications folder:
      thock --install

    The app is unsigned and macOS may block it the first time.
    1. Move it to /Applications
    2. Right-click it in Finder -> Open once

    CLI also installed as:
      thock-cli
    EOS
  end
end
