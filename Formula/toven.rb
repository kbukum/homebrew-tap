class Toven < Formula
  desc "Argv-first development and CI task planner for multi-module repositories"
  homepage "https://github.com/kbukum/toven"
  version "0.1.0-alpha.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.9/toven-aarch64-apple-darwin.tar.gz"
      sha256 "97ea670fdd5ddcf720401fc986c5f0cc0b3a53b10b9081d59bc9abb7ecdd906d"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.9/toven-x86_64-apple-darwin.tar.gz"
      sha256 "ffae34dbb34c7fa828f418e21850317ec185bd5af670765a655e632b85b06ea8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.9/toven-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97ab98b2b65ff681eb1b25f3e1c30376c41df31b73328affa54b0b9c91d39afb"
    end
    on_intel do
      url "https://github.com/kbukum/toven/releases/download/v0.1.0-alpha.9/toven-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4433b614cddd8fff8fb1c5d7d9714ad617067a6470aed09a74aa18b8bb850e0b"
    end
  end

  def install
    bin.install "toven"
  end

  test do
    assert_match "toven", shell_output("#{bin}/toven --version")
  end
end
