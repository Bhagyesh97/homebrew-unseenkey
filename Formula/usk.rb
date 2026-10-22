class Usk < Formula
  desc "Use API keys without seeing them: local vault and policy broker for agents and contractors"
  homepage "https://github.com/Bhagyesh97/unseenkey"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.0/usk-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5abb575a92ca6f98e5a81749bcc398894972880898cfb685efdb2dae1f06baaa"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.0/usk-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b3e3393e8fc133ffb5e26b71576f7b93cf8ac4f512ca6fab3d2b51780768f39d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.0/usk-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c81d3129ac48553222bd9f4dc0fa8e93ebd3ba25d6dab64bdd560a0a6387f0c"
    end
    on_intel do
      url "https://github.com/Bhagyesh97/unseenkey/releases/download/v0.1.0/usk-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44b3b63d2bd6ff6fbd8c71ef848dc0530817a48aa200e925d0937a1a83d7e4ed"
    end
  end

  def install
    bin.install "usk", "uskd"
  end

  test do
    assert_match "usk 0.1.0", shell_output("#{bin}/usk --version")
  end
end
