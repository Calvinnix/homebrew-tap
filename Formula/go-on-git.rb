class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.9.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "a5aa0d3d1f8740e08788aa158ce9556c4f8a6186bf9ce1db2c2264d5cd482b20"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.9.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "6ceb6e1894e6d0e7e5630f7042121065e2ebfcecd55ad01370f5138e166ad5af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.9.0/go-on-git-linux-arm64.tar.gz"
      sha256 "159c86216830743949c3f605629b9c0ea4da012ef7f9e93baf4a5ab9c0c951b3"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.9.0/go-on-git-linux-amd64.tar.gz"
      sha256 "269922bcf336d574ede5c11667b36067c230cbd4b071d6c6f2bdbfe21c996638"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
