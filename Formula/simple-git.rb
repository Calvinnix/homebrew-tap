class SimpleGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/simple-git"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.5.0/simple-git-darwin-arm64.tar.gz"
      sha256 "fb750c1c2a639878b9e14fae59308804a308e00d03b45b5f67139d69fb0ad739"
    end
    on_intel do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.5.0/simple-git-darwin-amd64.tar.gz"
      sha256 "27da092f2937380dfae2e91ba9eb3196d764c7e36ecc06680d116b960b75f9f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.5.0/simple-git-linux-arm64.tar.gz"
      sha256 "b5a409b451501325ad5b3abbed1173cca3deacca2bfb17f5db5ccba39b17331f"
    end
    on_intel do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.5.0/simple-git-linux-amd64.tar.gz"
      sha256 "0610d3c067de98b2e9c16a3e00c2bba8b04bd870a0f77e30423c6772c89c7bdc"
    end
  end

  def install
    bin.install "simple-git"
  end

  test do
    assert_match "simple-git version", shell_output("#{bin}/simple-git --version")
  end
end
