class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.2.1.tar.gz"
  sha256 "1c8a25af3498d963d4950e8f61af8a260fd2fa0e623e1aee2732e1cb8e8526d4"
  version "0.2.1"
  depends_on "crystal"

  def install
    system "shards install --production"
    system "crystal build --release --no-debug -o medup src/cli.cr"
    bin.install "medup"
  end

  test do
    system "{bin}/medup", "--help"
  end
end
