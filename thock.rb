class Thock < Formula
  desc "Thock your mac keyboard"
  homepage "https://github.com/kamillobinski/thock"
  url "https://github.com/kamillobinski/thock/releases/download/1.9.2/Thock-1.9.2.zip"
  sha256 "e8ab5ecbe9851cd3badce7bc09872fd1c6affed3f4dd54c5d75e1bd94cd35616"
  version "1.9.2"

  def install
    prefix.install "Thock.app"
  end

  def caveats
    <<~EOS
      To use Thock, move it to your /Applications folder:
        mv #{opt_prefix}/Thock.app /Applications

      Since this app is unsigned, macOS might block it.
      To open it, right-click → Open once, then it will work as usual.
    EOS
  end
end