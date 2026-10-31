class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.8/usk-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "8d4cdb58f967a73a64d27ba3d436ed1cf3747d6a6fe06025fb1b490814d16418"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.8/usk-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "c3e16daf055fcd8df3855b396a08a9e03002aa40ab81f4be137e6154ad901431"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.8/usk-v0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd993fccbfba4cafab683ab415de428457cfbfbc30de8990468fb58a3c84244e"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.8/usk-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7516d5d5c087f96a58298ed6ebaa61dee12ce5e1ba81e5e4fbe9143ed19629b"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.8", shell_output("#{bin}/usk --version")
  end
end
