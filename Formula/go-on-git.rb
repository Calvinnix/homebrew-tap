class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.22.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "a013b963b1cb1ce3d0f6358514b065e5dc50e92f004e848882293f2a698bdc67"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.22.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "28049761926f131b1c77e2de48d4befbe75855088d8cb4c2ec6ca2abadcee54b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.22.0/go-on-git-linux-arm64.tar.gz"
      sha256 "25b086a849bdc36d81b737c8995e22a24f968a89c5dcd5324006eb08497fb907"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.22.0/go-on-git-linux-amd64.tar.gz"
      sha256 "f1176247147d16849616a669470960294b77013cb6cb3b75c0612551f7beb7ba"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
