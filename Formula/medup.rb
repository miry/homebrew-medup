class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.1.8.tar.gz"
  sha256 "759a31c1a3a9fbb7951fe81d564daf719c75f0c86582201c07dcebde9538421a"
  version "0.1.8"
  depends_on "crystal"

  def install
    system "crystal build --release --no-debug -o medup src/cli.cr"
    bin.install "medup"
  end

  test do
    system "{bin}/medup", "--help"
  end
end
