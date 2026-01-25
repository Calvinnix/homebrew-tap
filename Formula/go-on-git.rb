class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.16.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "c586d767ced4c531e25e8f52a16a4f72e294e21c0f90d64c79d50ecb2ba6af2f"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.16.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "8fa1da65543640552b4b9c0576e26434a9c9eb3b71c20e3d1d8d59bc0579576b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.16.0/go-on-git-linux-arm64.tar.gz"
      sha256 "6dddbb0845b318cba22df05abd9474889659036be2043825be6326d13f288964"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.16.0/go-on-git-linux-amd64.tar.gz"
      sha256 "feca7caed8181e09020aa6c2096820388e3a0d8f6f25c7d71d774c8d88c1122d"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
