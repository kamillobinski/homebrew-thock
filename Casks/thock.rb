cask "thock" do
  version "1.23.0"
  sha256 "2f7bd6093e8e26aec43f2c48f0c2efefbc0fd22f81bc8788d745304047d4060c"

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