class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "e249a0861c2083b08aac514f416677c1e6fbb2cc0b991dfa47fcd7b2491c84a7"
  version "0.8.0"
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
