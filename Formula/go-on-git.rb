class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.21.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "afdf63a5cf2df866ad7408f47057f2030dcddb43dda86e4c3e107760f1d4e0de"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.21.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "e3087958e83c4136827d889d0c6cc444f3516550d0959b1aa9e88b0820fcc61d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.21.0/go-on-git-linux-arm64.tar.gz"
      sha256 "10f5c4cfeb0636464094f4b73aeebe54d555c03d8f60430df02b64584b98901f"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.21.0/go-on-git-linux-amd64.tar.gz"
      sha256 "555cf9f9efc6b52d9bbe2e869d94febf705e9c348ac155d4db2b3829b5d2517f"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
