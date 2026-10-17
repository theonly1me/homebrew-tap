class Vigilante < Formula
  desc "Show the new powers that a pull request gives to code, CI, and AI agents"
  homepage "https://github.com/theonly1me/vigilante"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.1/vigilante-aarch64-apple-darwin.tar.gz"
      sha256 "c18b42416d10f8381bc6e895d52d1dd051659f505f85646f0d6369c0e851dcc8"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.1/vigilante-x86_64-apple-darwin.tar.gz"
      sha256 "2df944194177aa6ba242689ed5b16a088d0ab5e6470c48823dd3125601ec61d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.1/vigilante-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad29e006e5e3eb7dcacec20b60b858c054e9947a67994dab158985b77547ee2f"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.1/vigilante-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55a41668f441ac4b2fb77cfad18d760b3ebb5c55143210cf8d347fcf519d0a98"
    end
  end

  def install
    bin.install "vigilante"
  end

  test do
    assert_match "vigilante #{version}", shell_output("#{bin}/vigilante --version")
  end
end
