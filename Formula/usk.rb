class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.5/usk-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "a61126cde10f885fca73716603df350d23815ec4ffb431240e3d1a644aed5b36"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.5/usk-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "4a321fc4c813d7850fc6a1953642cdcb239aadf75e3015f6692e3538a776692e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.5/usk-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13bad3497b7dbdab9f459788443044db081a302f12bfe00ca69bcac3aa7cea6d"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.5/usk-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbe6469e2d4a58328bd1905aaff061d0ce238d46868334d39d12079138b94f10"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.5", shell_output("#{bin}/usk --version")
  end
end
