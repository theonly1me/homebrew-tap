class Vigilante < Formula
  desc "Show the new powers that a pull request gives to code, CI, and AI agents"
  homepage "https://github.com/theonly1me/vigilante"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.1.0/vigilante-aarch64-apple-darwin.tar.gz"
      sha256 "142f034ab2aeb009aeffead70d312f936b68c437ef5076d3b41a3634754c9580"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.1.0/vigilante-x86_64-apple-darwin.tar.gz"
      sha256 "c2872a2df8935329b10e58cc8ecc7efafff74815526758023f56246ef4446087"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.1.0/vigilante-aarch64-unknown-linux-musl.tar.gz"
      sha256 "245d96f78a36ba9f569e2fc1a96525d853d366bdfecd78e9d680fc8f1d0b7642"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.1.0/vigilante-x86_64-unknown-linux-musl.tar.gz"
      sha256 "295a6395731fa794d2a488a8444bdff40b90522dcc2d3c012d3aa030a9f138c1"
    end
  end

  def install
    bin.install "vigilante"
  end

  test do
    assert_match "vigilante #{version}", shell_output("#{bin}/vigilante --version")
  end
end
