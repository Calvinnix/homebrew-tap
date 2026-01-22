class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.12.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "aeaaa542778d754d8ffd5c6ad8d8c70379b38847394240b2ce3823d7ff8f2aea"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.12.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "a3ee8c05d3dc048d2a990b241677c8e948f6a216eb9945bab4bdde470e515917"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.12.0/go-on-git-linux-arm64.tar.gz"
      sha256 "5f2a14df4e8936e3f9b42a6546aa30e310531370d165412e9fad19927d2fd728"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.12.0/go-on-git-linux-amd64.tar.gz"
      sha256 "14b1ea472eaf52586565b686a38516ddf56124e51dd9c386d01fcec8459eeac9"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
