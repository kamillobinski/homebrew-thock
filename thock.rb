class Thock < Formula
  desc "Thock your mac keyboard"
  homepage "https://github.com/kamillobinski/thock"
  url "https://github.com/kamillobinski/thock/releases/download/1.9.4/Thock-1.9.4.zip"
  sha256 "6fe87f9da6c1de245e5d632d9c603c219d5a094c8b258fe9eb2d98b1832b320a"
  version "1.9.4"

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
