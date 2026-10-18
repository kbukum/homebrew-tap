class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.13/toven-aarch64-apple-darwin.tar.gz"
      sha256 "4e0be885ef9de2276d6ea87461c59dfe10486d8e046fc2f50f461261b09b6da0"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.13/toven-x86_64-apple-darwin.tar.gz"
      sha256 "dcff205c3573a4081239e6eb45c341793e6ec66b5bfe2deefbb72afafed41277"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.13/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46f0780e7340b49a7d97280fbbe433b5725aa7cf570b7933c8a5a5fc0fde7f4e"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.13/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afb0ea6819abc9116ad976e9d7618115d5b3ff33d0943a694ebe4a1d7c15659a"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
