class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.3/toven-aarch64-apple-darwin.tar.gz"
      sha256 "3aafc42f4f28ba35da920fa92d298211cadd174540bb3e5da2fa2717f3c70d6f"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.3/toven-x86_64-apple-darwin.tar.gz"
      sha256 "570a55bd32e9c16708e192021b5810cd79b1ff5be541a9de6d8bec40181c5b98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.3/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89b27ca24e8d342fe29fcf3141a4de4b09bffa174eebb80f09dcced3e77238f4"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.3/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ac5529d5ce4bdc59d973f51f3d3573e94c4daf366ee2fb553782432b21b120d"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
