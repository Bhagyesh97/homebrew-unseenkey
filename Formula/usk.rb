class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.1/usk-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "2ec69afb026089fb3f4b233b9f3a831fdc799655118de1f0a1264110d5b60011"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.1/usk-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "6fb525b9a599c00cd6b2d6af7885f000a039f4afaaf53a0407c4543d45d2bad3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.1/usk-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d144fff9e441197a274f3469ac0abd4eb5d562c5804670faa9d2679e546970bd"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.1/usk-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3ff509a4a6bb6a8538ef077f1c3a137580cdd3cc03426670a2453b4c535c5c2"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.1", shell_output("#{bin}/usk --version")
  end
end
