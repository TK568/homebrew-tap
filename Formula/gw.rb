class Gw < Formula
  desc "Git worktree helper with local-file symlinking"
  homepage "https://github.com/TK568/gw"
  url "https://github.com/TK568/gw.git",
      tag:      "v0.1.1",
      revision: "a2041f9590373b4d3eefd543ed4527574f4e3f34"
  license "MIT"

  def install
    bin.install "bin/gw"
    zsh_completion.install "completions/_gw"
  end

  def caveats
    <<~EOS
      Add the following to your .zshrc (required for `gw switch` / `gw remove` to cd):
        eval "$(gw init zsh)"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gw --version")
  end
end
