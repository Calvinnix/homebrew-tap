class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.14.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "70e0a35420f4a85d837c3ea0d0d03d11be2f132d0969a13bb7b3ac08261cd70a"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.14.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "8cab6a2ecc1e585dea36094a59824ff7c0da631df43b471b57573706370f0ae1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.14.0/go-on-git-linux-arm64.tar.gz"
      sha256 "d4d8cfa8f0a268cea38f230c5bb76d5bd71d76f611c6be76f39d890af4ee096b"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.14.0/go-on-git-linux-amd64.tar.gz"
      sha256 "e65a73e11924c2783ebb3978919b071adcdfd47cf1a7c7c7411bf43fffd6da11"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
