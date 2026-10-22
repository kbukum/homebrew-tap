class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.15/toven-aarch64-apple-darwin.tar.gz"
      sha256 "9bceb48caeb3ee6fc7b804592d4e3a7e42dc49bf6e9c2102188ce2f960fdcdb9"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.15/toven-x86_64-apple-darwin.tar.gz"
      sha256 "82e76780b4e7387b51f863b323fe8b59d84c367ccce205ee48958510495fd40d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.15/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7f5f1d5ee2b72177c1497e115975769fbf5d2ce7dcf92ba81a7015f0dc1a17d"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.15/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf26436f6c881ac946eb3ef28c93eff8ed88988067dbb663c99ceefbfe9843a2"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
