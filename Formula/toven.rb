class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.10/toven-aarch64-apple-darwin.tar.gz"
      sha256 "2a32b40a4855efc613e3a4eeedc62b0371a816d461e2bb86fbd518f7b871f36c"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.10/toven-x86_64-apple-darwin.tar.gz"
      sha256 "bd0d97108a2e1c62fcef5971537efcd42b9d93b0384b6a7525fe13abb682267d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.10/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f91b71df49efda733ab3d093a7e9d91df0107e23e21e568d20840e1bc74da1d9"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.10/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92830256a9a1a668944be68faffa998aea97ee7a803d328a2e99d33791abdd45"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
