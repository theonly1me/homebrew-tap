class Vigilante < Formula
  desc "Show the new powers that a pull request gives to code, CI, and AI agents"
  homepage "https://github.com/theonly1me/vigilante"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.2.1/vigilante-aarch64-apple-darwin.tar.gz"
      sha256 "f0452a6c5501a70c01362a8869782406ac8cb901786f47e1a5d2649cd211fabc"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.2.1/vigilante-x86_64-apple-darwin.tar.gz"
      sha256 "04ea021573206941ed8edb367f4e2aa172dec34bb587da1a90c6aa6a197ca516"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.2.1/vigilante-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90fb12a31d88c50d9634b6dd200dfa2a3643bffbf24abd6fb44e7d463b53996b"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.2.1/vigilante-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae14a7a6253178cc46bc5ca1c46fbfed4de8c8c4fd5295b2a0444586f7635e3b"
    end
  end

  def install
    bin.install "vigilante"
  end

  test do
    assert_match "vigilante #{version}", shell_output("#{bin}/vigilante --version")
  end
end
