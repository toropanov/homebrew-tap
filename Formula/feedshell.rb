class Feedshell < Formula
  desc "Terminal RSS and Atom reader with Vim-style navigation"
  homepage "https://github.com/toropanov/feedshell"
  url "https://github.com/toropanov/feedshell/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f9e45227a8b6a4a7cbd9de761339895c5a343faa0bcf71bb649c165bc3c42996"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.write_env_script libexec/"bin/feedshell.js", PATH: Formula["node"].opt_bin
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/feedshell --version")
    assert_match "feedshell", shell_output("#{bin}/feedshell --help")
  end
end
