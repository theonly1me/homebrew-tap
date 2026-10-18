class Vigilante < Formula
  desc "Show the new powers that a pull request gives to code, CI, and AI agents"
  homepage "https://github.com/theonly1me/vigilante"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.2/vigilante-aarch64-apple-darwin.tar.gz"
      sha256 "5403448a6a37f452bc2a3a8d93d4a08b8767b342ccff33dcb5e5f714b7db948e"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.2/vigilante-x86_64-apple-darwin.tar.gz"
      sha256 "8e902931cf727c20cdc2bc9efebad064804df337f30370b8799424ee7f04424e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.2/vigilante-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85276932adc3cce7889d83322af06f0655ced15583d291893e3fa0959378bca0"
    end
    on_intel do
      url "https://github.com/theonly1me/vigilante/releases/download/v0.3.2/vigilante-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a86166160d86ff056eb3813285619f18eee42d64bab71ecd269ec55fae9f3d27"
    end
  end

  def install
    bin.install "vigilante"
  end

  test do
    assert_match "vigilante #{version}", shell_output("#{bin}/vigilante --version")
  end
end
