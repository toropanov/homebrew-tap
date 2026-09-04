class Feedshell < Formula
  desc "Terminal RSS and Atom reader with Vim-style navigation"
  homepage "https://github.com/toropanov/feedshell"
  url "https://github.com/toropanov/feedshell/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "eeffcf53e5bbc26b529acacf4c90248d9faad442a02ab52e28d3eb4e2d055852"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.write_env_script libexec/"bin/feedshell", PATH: formula_opt_bin("node")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/feedshell --version")
    assert_match "feedshell", shell_output("#{bin}/feedshell --help")
  end
end
