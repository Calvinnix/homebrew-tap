class SimpleGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/simple-git"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.4.0/simple-git-darwin-arm64.tar.gz"
      sha256 "28f99ba8b0f7a7d3355b0ef77768badc6b9871d20141209202b00483edd29106"
    end
    on_intel do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.4.0/simple-git-darwin-amd64.tar.gz"
      sha256 "2bedf039c391b2fca4e68bd33c11e99e8a64f03f0bd30fdb5fc4b255a88d17bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.4.0/simple-git-linux-arm64.tar.gz"
      sha256 "c8a138efe29739c79b6409f685c1f2ccca1b4348f20ffcd185f068e7e0083c94"
    end
    on_intel do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.4.0/simple-git-linux-amd64.tar.gz"
      sha256 "0af3817a8190fc2eab43814ad1320e54b8511e0b0ad3b9128a8ecbe7e87589c2"
    end
  end

  def install
    bin.install "simple-git"
  end

  test do
    assert_match "simple-git version", shell_output("#{bin}/simple-git --version")
  end
end
