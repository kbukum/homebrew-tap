class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.6/toven-aarch64-apple-darwin.tar.gz"
      sha256 "7a3579b7ec31c987b59476c5395c643beec014cf847463a04680e5e887fa41a0"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.6/toven-x86_64-apple-darwin.tar.gz"
      sha256 "0367011a855980b0df29eb787e1f1d7bd15224dec8a139849b14897ebb2022fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.6/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd1366288c8b28062d3e02c6fbc3babdaaa867d2fed2259bf35669599ff64939"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.6/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45e7233e87253d6da02ec63e67c8c00c65c14b91016c1ab880513a9ac9e99d89"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
