class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.4.0.tar.gz"
  sha256 "fba1ddb19c428154fd686bb93300371e0f57660c24dac1e64a5270d91637b2dc"
  version "0.4.0"
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
