class GoOnGit < Formula
  desc "Lightweight Git TUI"
  homepage "https://github.com/Calvinnix/go-on-git"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.7.0/go-on-git-darwin-arm64.tar.gz"
      sha256 "66f25149ece1e4b3c853f826a324ece3bf58dd18de2415d56fb108151eee7593"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.7.0/go-on-git-darwin-amd64.tar.gz"
      sha256 "6ae70b41019f11cfbb6a32aab91ffc8b41c3553e2eed33cba323a44afa92be9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.7.0/go-on-git-linux-arm64.tar.gz"
      sha256 "8f8034a617fd78df85e4237b0cd6a213f6a4909252e44eec66387cef6bc69564"
    end
    on_intel do
      url "https://github.com/Calvinnix/go-on-git/releases/download/v0.7.0/go-on-git-linux-amd64.tar.gz"
      sha256 "9d66b773952109db5be24d0e606257fffdf5af54f1cc299627aa2a8ccbf9893d"
    end
  end

  def install
    bin.install "go-on-git"
  end

  test do
    assert_match "go-on-git version", shell_output("#{bin}/go-on-git --version")
  end
end
