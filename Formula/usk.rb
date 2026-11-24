class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.11/usk-v0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "5f1b6ae9df7e065634c3b02af3f029615d21218a369cf986cbc2f46735257956"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.11/usk-v0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "9e5bcb905772b8b7a64effa83c1fff7f2b854ac7a553392f8f516e8aeb27e19c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.11/usk-v0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "201ae2feaa7921e385f101d6fbfb7e9396b625d0d977e24f3a5b42d9d77382e2"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.11/usk-v0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fa732027087dfce760e47a4c39cb164af063543058d7590bc00f7365620baab"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.11", shell_output("#{bin}/usk --version")
  end
end
