class Fasd < Formula
  desc "CLI tool for quick access to files and directories"
  homepage "https://github.com/raxod502/fasd"
  url "https://github.com/raxod502/fasd/archive/1.0.2.tar.gz"
  sha256 "1031d1de88c9431fa33b84aa826b3a25a0896fc7243d62759101c74a15017677"
  head "https://github.com/raxod502/fasd.git"

  bottle :unneeded

  def install
    bin.install "fasd"
    man1.install "fasd.1"
  end

  test do
    system "#{bin}/fasd", "--init", "auto"
  end
end
