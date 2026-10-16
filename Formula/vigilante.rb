class Vigilante < Formula
  desc "Show the new powers that a pull request gives to code, CI, and AI agents"
  homepage "https://github.com/theonly1me/vigilante"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.1.1/vigilante-aarch64-apple-darwin.tar.gz"
      sha256 "6269167e526c70d0aeb72bde63bfe28ae9fd05f4d1b5bae302edeba912a2f950"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.1.1/vigilante-x86_64-apple-darwin.tar.gz"
      sha256 "fa0b759ea108c1aa99210243d90ff5679ca303781f18638db19983edf6642dd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.1.1/vigilante-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7f4163c9eb71841888e13f6231d6a0aeea87abf7158c74c625408ecc89642c19"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.1.1/vigilante-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f39916b46df900e85ff34fc57bf1fe455629dda0cbbeb0b62fe0e26b4f221fe4"
    end
  end

  def install
    bin.install "vigilante"
  end

  test do
    assert_match "vigilante #{version}", shell_output("#{bin}/vigilante --version")
  end
end
