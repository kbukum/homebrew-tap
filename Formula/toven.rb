class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.14/toven-aarch64-apple-darwin.tar.gz"
      sha256 "e7d0ac65edc10d68018fea0d2b69d383dfb93255b6a427d9ce87cfd882a87df7"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.14/toven-x86_64-apple-darwin.tar.gz"
      sha256 "d02e84be244cdeca678a003af31eef5c3c50c738350e4fc7b6ed1bd60580e173"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.14/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6105309f3f95433baa2e9816c8866328fa6eeaad600c32f2b931a01ea37975d2"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.14/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b9a7019d457394ac1e45b7721b8542d24e1a06b8eb26a68ade1ac16349a9cea"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
