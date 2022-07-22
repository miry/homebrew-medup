class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "22d3de956055b9c70ca1a4e5c0fb6626130b9826a9136d48aaf6c32408a4078d"
  version "0.7.0"
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
