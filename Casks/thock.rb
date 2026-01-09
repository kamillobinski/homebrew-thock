cask "thock" do
  version "1.18.3"
  sha256 "97bdef104ce4adb37259e7565500e1963c0870283e509dc0b3e8f9f17b14f1f3"

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