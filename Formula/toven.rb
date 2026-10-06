class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.11/toven-aarch64-apple-darwin.tar.gz"
      sha256 "8980e54bea867c122eef4a597afdb9a4321b25a7a71a457937cf5f59a52094da"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.11/toven-x86_64-apple-darwin.tar.gz"
      sha256 "fc9c21699170d14531112b12a367abc7c1cc227ce76cc76bef012e24af958c09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.11/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f7eb5bb402eabbbd86e32779cbfc59eaf29343e3e2db0a77dced316553599ed"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.11/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c00280d8dc01ff0845bfe6ed614ecba74cbc2fdb8ac2598fe4429ec73e72676"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
