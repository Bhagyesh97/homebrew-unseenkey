class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.9/usk-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "a581ce861ba47a17156cbe14c7c9fd2d764a57658c8b07a9ae3447384ca802bc"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.9/usk-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "168c5cb281d5404a9d8bab89825fce0e70fb4cbb22d6c4b544602c629aaf8a93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.9/usk-v0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32ca85f31d5fbabfe5dfef3d42ab6ba2f39fd0865477396213cdbb19867b3e49"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.9/usk-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ab5ed940f57df4b6983f5db2ec5f52a501a9d5151f81345a4ac72d95db65d03"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.9", shell_output("#{bin}/usk --version")
  end
end
