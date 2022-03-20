class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.2.0.tar.gz"
  sha256 "5f140182bfa6c69debeb1a2c1d08694fba88f7caed5721e7f8a0cca11804e6b7"
  version "0.2.0"
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
