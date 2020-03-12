class Medup < Formula
  desc "Export Medium articles to Markdown"
  homepage "http://github.com/miry/medup"
  head "https://github.com/miry/medup.git"
  url "https://github.com/miry/medup/archive/v0.1.6.tar.gz"
  sha256 "b53da407a6698d491858814e8b1bf9645970bcf88b5c3b7fe13e09f125737933"
  version "0.1.6"
  depends_on "crystal-lang"

  def install
    system "crystal build --release -o medup src/cli.cr"
    bin.install "medup"
  end

  test do
    system "{bin}/medup", "--help"
  end
end
