class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.2/usk-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "3e90504cbcb1cc0ec4abb50c8fde039e4d9fbcebfce14716f5aa7f0846aee07a"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.2/usk-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "da00eb832b69ea22f6c00f40701b1fea33719bbd7ba63966f3dbb8e0ee7a45f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.2/usk-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "259ed0a3cd872fd731d80ffdc7e050ab2c04785774ec45f3b126fac8edf6bec7"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.2/usk-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6542c8ed24a77b94b2c222557bc8e1dead517a7eea1cb854da9aacd2def0305b"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.2", shell_output("#{bin}/usk --version")
  end
end
