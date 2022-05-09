class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.5.0.tar.gz"
  sha256 "ae50d2d351048372b5f84bfeda2337043ce73e16d39c165c5606669ce564a024"
  version "0.5.0"
  depends_on "crystal"

  def install
    system "shards install --production"
    system "crystal build --release --no-debug -o medup src/cli.cr"
    bin.install "medup"
  end

  test do
    system "{bin}/medup", "--version"
  end
end
