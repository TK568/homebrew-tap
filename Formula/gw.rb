class Gw < Formula
  desc "Git worktree helper with local-file symlinking"
  homepage "https://github.com/TK568/gw"
  url "https://github.com/TK568/gw.git",
      tag:      "v0.1.0",
      revision: "9dd69bca937dc6fcff89ef1c677a2e5fe33da01a"
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
