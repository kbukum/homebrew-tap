class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.9/toven-aarch64-apple-darwin.tar.gz"
      sha256 "c9bca7c847cc48597cf179e801592ba7ee412612148b3c938e2b7b3c8a981eb6"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.9/toven-x86_64-apple-darwin.tar.gz"
      sha256 "1da251ffba34114869588ee329f20434ae9d4ed0d4ec5311c5413f8f991ced2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.9/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "499bb201a9f6e1d39d2ebc5e1d36296c4c244ddbbadaa8022a8a782a4dfd6efd"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.9/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27a240d3780ec7fa897273b0f9fc81417f8c00c1c60ec65e39b318562dd508db"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
