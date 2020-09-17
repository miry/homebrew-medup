class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.1.9.tar.gz"
  sha256 "4cd1b9a5d345a0828eb775630f3c0fd493b6c9e97a14dcd1c80778d60e8d642c"
  version "0.1.9"
  depends_on "crystal"

  def install
    system "crystal build --release --no-debug -o medup src/cli.cr"
    bin.install "medup"
  end

  test do
    system "{bin}/medup", "--help"
  end
end
