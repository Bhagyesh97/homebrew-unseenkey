class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.4/usk-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "00b1df55c5aa54664aea6711fef8cc6ccf2457309a8ce8b46d5a78b3c1edf784"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.4/usk-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "65c73d01ea92cafac99b717ddb2e43cf8d35b8b13f15a291cf86c5e4fc39a86e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.4/usk-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be5c041eb434797efca9cd106a8283fd57c9083f1d41bce3f13f27bc3a6126e6"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.4/usk-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ab90d93a7fd04ef1b89ca125a1151f977abee976b7875ef1fbccf9c657663cd"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.4", shell_output("#{bin}/usk --version")
  end
end
