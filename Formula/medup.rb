class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.3.0.tar.gz"
  sha256 "40c37270597dc82c55bceeeaf4151a2e7b26573bf32c814a3e9795f08949e1d7"
  version "0.3.0"
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
