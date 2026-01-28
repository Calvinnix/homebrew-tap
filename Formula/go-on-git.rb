class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.18.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "aeb49bb2d9d1d936fa5622bbd13382c4828f90ba9bc7ce887538b8400552b993"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.18.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "dea08f4a16642899f9a7d1e87eacd351a05027ba2b6ebd246da8d4e857c844ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.18.0/go-on-git-linux-arm64.tar.gz"
      sha256 "a263631fa80195cbc8e3243cfcb4e0e1e75f1890343281ca0ca960619e3082d7"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.18.0/go-on-git-linux-amd64.tar.gz"
      sha256 "6b33794fecde68237dc6577c1845c49f9e86aa847f16236dd5d7ee9f8388b4b1"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
