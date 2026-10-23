class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.16/toven-aarch64-apple-darwin.tar.gz"
      sha256 "60c6e3f49874191096fc95154fac3cef0fef5168a508d4a780096db5d1fcfe4e"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.16/toven-x86_64-apple-darwin.tar.gz"
      sha256 "91a7fae7bcd5332607d42f3ad1e333fd2c2fd1b59562e6aa3d67ff8a424d9afc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.16/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cb07c7660386afa0d646a74bbb0d375ad4846eb0be206ec809ab8a39a44bff2"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.16/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7981e10b849e67240f048cde2bff0068025450e2657f2ff3f70d072f0fae65b"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
