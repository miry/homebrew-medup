class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "b4344d3bf7fcfb088cc90bcf83b52dd03a1474a8497bc3b379bf09ff359bb9df"
  version "0.6.0"
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
