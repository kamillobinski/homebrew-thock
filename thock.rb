class Thock < Formula
  desc "Thock your mac keyboard"
  homepage "https://github.com/kamillobinski/thock"
  url "https://github.com/kamillobinski/thock/releases/download/1.9.3/Thock-1.9.3.zip"
  sha256 "1adf840ddb33629f422bc5e2f01183c9c0388f3cd7b100191c9334961179a89f"
  version "1.9.3"

  def install
    prefix.install "Thock.app"

    # Create a CLI wrapper to launch the app with `thock`
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
    
    Or use:
    mv #{opt_prefix}/Thock.app /Applications
	
	The app is unsigned and macOS may block it the first time.
	1. Move it to /Applications
	2. Right-click it in Finder -> Open once
    EOS
  end
end
