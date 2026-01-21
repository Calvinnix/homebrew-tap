class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.11.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "49e36cf700aa9c31472cdafe81edc2fe40d669479dc0491f9aa340b709f25a88"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.11.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "14ba1544c9d478e7ed948b1f7667d2e3329b1d02afa067985985b88ed0213f23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.11.0/go-on-git-linux-arm64.tar.gz"
      sha256 "43a199e9465272bf4e01bc823e03f42d83c56487c436ff6ee71eb78d498d31ec"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.11.0/go-on-git-linux-amd64.tar.gz"
      sha256 "2a972d4f2d984653a8ef8f4fad60ddfa6ac1d9243767b6979328f19784d2b372"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
