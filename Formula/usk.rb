class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.10/usk-v0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "49ca1a9111e70a6fc845a45012a169d0743710b3c567145c800e73937c02a791"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.10/usk-v0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "81459668fc5c9926bb5649f833f520acfec8bce858fc5a9f1b0c0c68b3af1964"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.10/usk-v0.1.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8f0415b90b7f1901788b88c3de8ad1f236959e627d95dfea5ab1a1c27f43497"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.10/usk-v0.1.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba97dbfa598a236fedbb8ec2b500d5d2cbe91918552f31fa741ef41eb9a6d93b"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.10", shell_output("#{bin}/usk --version")
  end
end
