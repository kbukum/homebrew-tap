class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.8/toven-aarch64-apple-darwin.tar.gz"
      sha256 "32c2c6c1a2decab62f5433a1c8d18668e1b6f77fdf1b20660b6c817504f7bc63"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.8/toven-x86_64-apple-darwin.tar.gz"
      sha256 "964151756008831842979577a56de5639c6c43b23fbb23a17ab13e0f8be11477"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.8/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecac272163457e5d1f8daa21c0068bd6a203d08b268a8ee0dc93693de71a2eca"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.8/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb2e79eee9c8e29da049b233c78307ae0b09fb8f5405fe21db6b602aaa39313c"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
