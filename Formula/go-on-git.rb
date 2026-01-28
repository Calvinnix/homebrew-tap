class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.20.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "6a169e111e25f0cd9bd9be3405c23b77dd880e1e7c6bd8feae1c1bab4a2e4b76"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.20.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "974144f5298e906d375a72639148782497eda4606604a7b11092f6f824ca3e19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.20.0/go-on-git-linux-arm64.tar.gz"
      sha256 "58599528631a18da25b818febd01cab60de703da7525adb82d085b8efb9f82dd"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.20.0/go-on-git-linux-amd64.tar.gz"
      sha256 "d6749244045186bdbf973c9c65db9aea1022b52fed6a82000fd6afb3c5141c5f"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
