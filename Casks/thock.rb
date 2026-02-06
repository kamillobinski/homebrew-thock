cask "thock" do
  version "1.20.0"
  sha256 "bad60fad003e820e1e191e6cdab956527d5772980b03c0a685aed7a8a0ddc8c7"

  url "https://github.com/kamillobinski/thock/releases/download/#{version}/Thock-#{version}.zip"
  name "Thock"
  desc "Thock your mac keyboard"
  homepage "https://github.com/kamillobinski/thock"

  app "Thock.app"
  binary "thock-cli"

  caveats <<~EOS
    Happy thocking!

    Launch: open -a Thock
    CLI: thock-cli
  EOS
end