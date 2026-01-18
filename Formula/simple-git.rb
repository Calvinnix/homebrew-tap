class SimpleGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/simple-git"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.2.0/simple-git-darwin-arm64.tar.gz"
      sha256 "48d1edcd1d4d0e7acaf54bef6a7ff672bd5ad0b3aa1a52f0bc50ffb5dcb67dac"
    end
    on_intel do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.2.0/simple-git-darwin-amd64.tar.gz"
      sha256 "b8f506f6f42ccf2b6c7bc600e7085e6a53252600e5a3c41b4d1df18871d860ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.2.0/simple-git-linux-arm64.tar.gz"
      sha256 "42618bb2c5c4a2d6b510adaabeb0f8c8036a2445dd60e840af67bd26b80204a3"
    end
    on_intel do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.2.0/simple-git-linux-amd64.tar.gz"
      sha256 "c95fc1e1e87af313fa71bbb3e62d67bf209607ff900127fa0b6ddbcacfd28eb6"
    end
  end

  def install
    bin.install "simple-git"
  end

  test do
    assert_match "simple-git version", shell_output("#{bin}/simple-git --version")
  end
end
