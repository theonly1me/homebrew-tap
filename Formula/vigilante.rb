class Vigilante < Formula
  desc "Show the new powers that a pull request gives to code, CI, and AI agents"
  homepage "https://github.com/theonly1me/vigilante"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.0/vigilante-aarch64-apple-darwin.tar.gz"
      sha256 "42406ed28c7a7b03b57c2c8ca960136ffeabf3d32bca836f14ee75a0d0cf4f8b"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.0/vigilante-x86_64-apple-darwin.tar.gz"
      sha256 "6099b9594e58acafdd6e9e3d347ae406a4a28991a3991f98246817ada99fde57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.0/vigilante-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df71e1834fc71712b39ce4ce78e2f6ba805318da1dcb9133b46b2f9902093462"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.0/vigilante-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e2a8eb002c3840adec3c225026e6a61b103a5bdb3f1bb5dec2bd1ea34263c09"
    end
  end

  def install
    bin.install "vigilante"
  end

  test do
    assert_match "vigilante #{version}", shell_output("#{bin}/vigilante --version")
  end
end
