class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.4/toven-aarch64-apple-darwin.tar.gz"
      sha256 "4ef555ae88fd93bf31aab24911cf0328112d63a1fa1ab5ebb8cc616f18878032"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.4/toven-x86_64-apple-darwin.tar.gz"
      sha256 "3023e84f7706a9929a83c5ea867168dbba570986295c74a33c3b3cc9cb5f4d32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.4/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35bc0499a29cd523f7823f23461ab157e5cb4af3294cbc0863015f704a9902b5"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.4/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30b0f8429e7723b121b91089b47f9547aaaff383828babf094db551193cb579d"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
