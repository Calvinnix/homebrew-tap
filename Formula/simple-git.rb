class SimpleGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/simple-git"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.3.0/simple-git-darwin-arm64.tar.gz"
      sha256 "3d036b863c62987ce54f923340abff2d6e9e7d4e8badfff062f72204e733c127"
    end
    on_intel do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.3.0/simple-git-darwin-amd64.tar.gz"
      sha256 "e25ec022102ff3f38a4b419753b09a812935b771ae0f86b6f9b199cbd4900129"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.3.0/simple-git-linux-arm64.tar.gz"
      sha256 "02c1429d88f019aeae1658598b8b1d772fac041ab74b2aff41415b01980c2c16"
    end
    on_intel do
      url "https://github.com/Calvinnix/simple-git/releases/download/v0.3.0/simple-git-linux-amd64.tar.gz"
      sha256 "d46d7754a4f14e598eaa4e49c1004cabe43f98efc4cf30adc187ebdfda06eb72"
    end
  end

  def install
    bin.install "simple-git"
  end

  test do
    assert_match "simple-git version", shell_output("#{bin}/simple-git --version")
  end
end
