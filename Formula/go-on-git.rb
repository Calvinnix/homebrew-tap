class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.8.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "bdcd28de333956efec08fbac08fc1783ef6b5b14f58a104ea7df3afca1c5d37a"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.8.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "3db3b05c1939ed2c2de40be988959273da7b1cc0f69fb537bc724b8d354ee6ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.8.0/go-on-git-linux-arm64.tar.gz"
      sha256 "4c87720a1cbc5c0e4db1da6b7f36a8d5bc4bb6c627d65dc773c5cf4f54d7703b"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.8.0/go-on-git-linux-amd64.tar.gz"
      sha256 "250768d5656d7dfc3d46d8cb37b1aea1a8063596fd586ddd9cd1125a1dcf12a5"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
