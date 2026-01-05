cask "thock" do
  version "1.18.2"
  sha256 "619eba3e5dcb9b67459b6b2f7fa2d67f06fc89967aa0cf804d28f7636b362819"

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