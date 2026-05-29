class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.24.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "c698de91e17e0991b3f5d28ff3a7912c27b67e2605bd777368431f148ec14e79"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.24.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "6b7137c3538cddff3ca14751155a2ccf1797200c575306403d363c804442c049"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.24.0/go-on-git-linux-arm64.tar.gz"
      sha256 "65761d1d47580c7d4ee8a727317bcf21d0758a76aec8e1ea793a96d9d1234c4e"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.24.0/go-on-git-linux-amd64.tar.gz"
      sha256 "e623f377e4d007ffcede25b794cbddfbcca907b3a596a763a9954f217865ca9b"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
