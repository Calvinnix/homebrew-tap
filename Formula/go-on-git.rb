class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.13.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "8832f71deaced11ca76e552fb55019fae2b75927487dada44c8fb2cc1117d45e"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.13.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "36abd31f0f0ae1e2bacdf62dd7971fa71f8a88d6e34a7ae4a12f966596e7c5e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.13.0/go-on-git-linux-arm64.tar.gz"
      sha256 "312bee0f059927bccced4dfae4d58cfbdaa52e30ccda03f98bce0c5913546d22"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.13.0/go-on-git-linux-amd64.tar.gz"
      sha256 "ef69c260ca344891042e2f9e194ae5ba3fadde2dfbc4431234834d598e9742da"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
