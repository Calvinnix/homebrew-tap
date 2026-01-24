class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.15.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "60ef637f53407416ac0eb58aad89200494e5f22a72d440c8adc50c995643426c"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.15.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "5fa993461575a9e314fc4b4d7724f71f1d36b212fa5fe204cc7a5661fca9b7fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.15.0/go-on-git-linux-arm64.tar.gz"
      sha256 "465dfd7a90807bcf6b7b59b1438955a942d195ae9eb5f2591839420c5f235c43"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.15.0/go-on-git-linux-amd64.tar.gz"
      sha256 "af8ad76cbfd73450ef644e7b6178fb7ff1ab3b84367554294ce61584b687c042"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
