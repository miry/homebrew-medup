class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://codeberg.org/miry/medup"
  head "https://codeberg.org/miry/medup.git"
  url "https://codeberg.org/miry/medup/archive/v0.8.1.tar.gz"
  sha256 "95870b8894fe30e05420bef1f7b2e5a634ece195d6e8de7f63c563333cca669a"
  version "0.8.1"
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
