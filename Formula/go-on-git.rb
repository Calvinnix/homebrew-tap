class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.17.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "8f2f96730b2cd46bcbf0cb71f6f340a5da749139f41d450a121801a037e92233"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.17.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "870a4affcf0c2b3ea548d1427dec52bb744e2b1dfa303c2d5739a6f72bb9b706"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.17.0/go-on-git-linux-arm64.tar.gz"
      sha256 "0a2ff98c21ac9f3557b975067f7d700a8999cd5ebc1f24ce82eaa0aaf7a6dedf"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.17.0/go-on-git-linux-amd64.tar.gz"
      sha256 "0db3e193e5b1083635b0f9e123a04c2d4a9e58b2af79cbacc7bd33a4cffba0cb"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
