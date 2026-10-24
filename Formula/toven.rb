class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.17/toven-aarch64-apple-darwin.tar.gz"
      sha256 "5a71684f5ef7f43c95ec66847703666ec31ce48d675b003b04fa24287ccf4ca7"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.17/toven-x86_64-apple-darwin.tar.gz"
      sha256 "a160fc98a91709476ea2b783498088cf66bcf44aa861d312751104b646411f1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.17/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21b9afe1fb747d8a8b5fb770f5dd73f8359be5b43036d25a7da2bc27c1607e0c"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.17/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ffb7de6cca1bcc7f051b72909f0b8fa313b5711c228a8e8145f3a3e24ac72b9"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
