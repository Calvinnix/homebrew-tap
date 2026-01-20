class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.10.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "4dffdd7a59ab45fd21ad4d95708c7025fd5aa4ffb47bc6f524238bc1bcd3258d"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.10.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "720de334e46b09ba6224120b03973bc4783be639e0185671bcbf47a9088c8f41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.10.0/go-on-git-linux-arm64.tar.gz"
      sha256 "e42949dc1f049edcc04957194a5b2581e013a5bf4ce55f3bbb75cda470fa5d35"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.10.0/go-on-git-linux-amd64.tar.gz"
      sha256 "22c326f7ccae52a758f5169112e5d16aab38a0d98c690410b0bc11f2885c7aca"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
