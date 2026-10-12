class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.12/toven-aarch64-apple-darwin.tar.gz"
      sha256 "1dd6f4bc785af7deed8c1ec18478d4f68af180c3d43482e8ace694bafdf2775a"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.12/toven-x86_64-apple-darwin.tar.gz"
      sha256 "1384ed006212e322f1f2f1960b7eea588043cbcb315abc25ed04df76ac6f2e75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.12/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46c2df97be0fe91c78a2fd740f6b2bfd8512ce63b989f4ba307d3c5ffbfdb24c"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.12/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f00c8a8fb48bdd2aacc3968c4495e35beb7b461d4a44def55735b03d8e053337"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
