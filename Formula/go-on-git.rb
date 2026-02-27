class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.23.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "3541e56cd5ff3f2357316ebd27c452ec584b03dc61e06bd07383fa74be69c62e"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.23.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "908be18fcb61221db56999fcb2028cddb1d5a925f3b7c0c646abab91abe1c406"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.23.0/go-on-git-linux-arm64.tar.gz"
      sha256 "b79e953bb9d87937f945034acbcd99e16cc9845eeb4a1baf5a7873ead71d408b"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.23.0/go-on-git-linux-amd64.tar.gz"
      sha256 "3f3665069a01522a07660ea20481a2e272639191a971232b441080838f1a620b"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
