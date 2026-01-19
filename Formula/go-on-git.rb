class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.6.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "bd38e4b52f7e5aad8f6b041c8912f2d853a35f07eb122fb4fb4aa483712c4d56"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.6.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "a30e1180a1cc7e716cb3958c2e46fd30d868e96ce1f898f7b76e5d6610e4d185"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.6.0/go-on-git-linux-arm64.tar.gz"
      sha256 "b054d8601760d215e0c6bde6e6eafa6f69779ef87710204235e1619542500187"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.6.0/go-on-git-linux-amd64.tar.gz"
      sha256 "6ccca5a69cec2ef7b84ee9aba4c838c4c8f500222c486e0bc3a0b9027edb4182"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
