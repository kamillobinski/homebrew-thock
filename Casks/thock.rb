cask "thock" do
  version "1.22.0"
  sha256 "46b321fb94908b947727ab485eefa967b7a7cdc4624de80659416279f06bcc1c"

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