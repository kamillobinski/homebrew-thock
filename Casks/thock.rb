cask "thock" do
  version "1.21.0"
  sha256 "8d133fc6893b8a5ba3a337383c67a22dac560f7ab6e64344f09aaf7bc2866f7a"

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