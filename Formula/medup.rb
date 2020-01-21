class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  url "https://github.com/miry/medup/archive/v0.1.5.tar.gz"
  sha256 "62d9da2a727f49d4dc107327b4c91fb7b877bbb7b88899d35bf8456dbdeeabaf"
  version "0.1.5"
  depends_on "crystal-lang"

  def install
    system "crystal build --release -o medup src/cli.cr"
    bin.install "medup"
  end

  test do
    system "{bin}/medup", "--help"
  end
end
