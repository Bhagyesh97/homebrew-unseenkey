class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.7/usk-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "733af79e22abf11030c3226461ee7c86c4c47b950a5b00e7e4a829a52efc89c0"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.7/usk-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "ba5a5594ab16fc7e08601ec5ef13764adc0f4d44a1600d41c08031af9562f888"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.7/usk-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b19e3cd6935c9af0d2f8e530968f4b12aebe181231039fcac175285d2e4550f1"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.7/usk-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8d7bb9b93dca8a0d089dabc9a590030f99ff69aa435c8be2fb8e2f24a01d494"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.7", shell_output("#{bin}/usk --version")
  end
end
