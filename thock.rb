class Thock < Formula
  desc "Thock your mac keyboard"
  homepage "https://github.com/kamillobinski/thock"
  url "https://github.com/kamillobinski/thock/releases/download/1.10.0/Thock-1.10.0.zip"
  sha256 "1ca3786ab104d4e9804df320b9c1d9a7dc5f635a5d7841dcb9cde1abfabc7ea7"
  version "1.10.0"

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
