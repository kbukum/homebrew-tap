class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.6/toven-aarch64-apple-darwin.tar.gz"
      sha256 "4f8264acd24c030b8a188655fc55ab7b5abc238029ff385bf15d3bac10c907ad"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.6/toven-x86_64-apple-darwin.tar.gz"
      sha256 "17c4006e8eaf5040c0e7a10033bb0c90f661ac9acd291a7bf54e0678048aa9d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.6/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69449eae71dadbdd8289ed1dea42c644faf05630a87cc5e50a0140ad23426e5d"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.6/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd4cd9656ccd1ca8d1c453f3232c11a4d64845062a18f26640aada138ab42204"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
