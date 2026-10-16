class Vigilante < Formula
  desc "Show the new powers that a pull request gives to code, CI, and AI agents"
  homepage "https://github.com/theonly1me/vigilante"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.2.0/vigilante-aarch64-apple-darwin.tar.gz"
      sha256 "26f0187863a3bb7a81b832691e9a50ec677027fafa56205a42269c2cd9c099b9"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.2.0/vigilante-x86_64-apple-darwin.tar.gz"
      sha256 "d4f6db5a7f3d9c7df6ecb9a912b093a0c23e39692406ff9ee799b9bd3c73b962"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.2.0/vigilante-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6134d720acfe4f051cf05a52c7991d9a36c970774856c6793ae5fa2c3214b46a"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.2.0/vigilante-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2ce1650e26d875599c05289907b2ce8da6a51af9c97c0ebcef99ddcfc15d226"
    end
  end

  def install
    bin.install "vigilante"
  end

  test do
    assert_match "vigilante #{version}", shell_output("#{bin}/vigilante --version")
  end
end
