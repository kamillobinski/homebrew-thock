class Thock < Formula
  desc "Thock your mac keyboard"
  homepage "https://github.com/kamillobinski/thock"
  url "https://github.com/kamillobinski/thock/releases/download/1.13.1/Thock-1.13.1.zip"
  sha256 "1961479d705bac662d5cf54642c9edf4e87138c63106132955f6d03467200164"
  version "1.13.1"

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
