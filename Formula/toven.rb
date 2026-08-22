class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.7/toven-aarch64-apple-darwin.tar.gz"
      sha256 "9ce3e2faa25404433b8eaa8f985d7b4a224262578df69e2c97ad97288555b56c"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.7/toven-x86_64-apple-darwin.tar.gz"
      sha256 "4438b45d6050c9f5d187f6009f881a154d42826dac1c967ef667bdfd0555fd89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.7/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc6c62dea97747cb18ab32619f5863dc4f09631d4158f1f9ebfa77518f5ed250"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.7/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "deee1e51b7da8c168565f9cb2fe36b379c64dba152d51ad98e37d7d66daaf8f1"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
