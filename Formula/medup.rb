class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.1.10.tar.gz"
  sha256 "79cf41d03ffdb322e8f9d61301c1236594c98f60ad386d3f87119434747067c1"
  version "0.1.10"
  depends_on "crystal"

  def install
    system "shards install"
    system "crystal build --release --no-debug -o medup src/cli.cr"
    bin.install "medup"
  end

  test do
    system "{bin}/medup", "--help"
  end
end
