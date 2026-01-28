class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.19.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "e8671f5af28eaa872c7912d857f22c849d938928b9841a999cbe758e7b67e1d5"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.19.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "a4581a0ceabdc6f9639b3c8b6d6d46806fa37755387dd6adbc66088163e859b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.19.0/go-on-git-linux-arm64.tar.gz"
      sha256 "9a2778f3e2eddfc938978fa89aba9c83385c69eafe84fb76ad8459cd7598a144"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.19.0/go-on-git-linux-amd64.tar.gz"
      sha256 "ee6010c2fb345cd15d1cb078581dc05bd4073bf59ce15a0068cb04b6a13f924f"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
