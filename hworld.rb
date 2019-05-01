class Hworld < Formula
  desc "Simple hello world script."
  homepage "https://github.com/rob-dalton/hworld"
  url "https://github.com/rob-dalton/hworld/raw/master/hworld-1.0.tar.gz"
  sha256 "73bf1b48624e09cf6b16b34b6b4d604a80294a017cdfb588a0de9081be3593a7"
  version "1.0"

  def install
    # install hworld script, create symlink to script in /usr/local/bin
    bin.install "hworld"
  end

  test do
    # test script output
    assert_equal %x('#{bin}/hworld'), "Hello world!\n"
  end
end
