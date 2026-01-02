cask "thock" do
  version "1.18.1"
  sha256 "bc417624936a461078178a0463c969a7c8a295986586faa5cd58be015b471738"

  url "https://github.com/kamillobinski/thock/releases/download/#{version}/Thock-#{version}.zip"
  name "Thock"
  desc "Thock your mac keyboard"
  homepage "https://github.com/kamillobinski/thock"

  app "Thock.app"
  binary "thock-cli"

  caveats <<~EOS
    Thock has been installed to /Applications/Thock.app

    Happy thocking!

    CLI tool installed:
      thock-cli

    To launch the app:
      open -a Thock
  EOS
end