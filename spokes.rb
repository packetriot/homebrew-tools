class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"

  url "https://download.packetriot.com/macos/brew/spokes-1.1.1.tar.gz"
  sha256 "61ecb7a2386447909425a72031b9e2bc11b67ca6684a02f52fc6f6e9cfadc4f1"

  bottle :unneeded

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    bin.install "usr/bin/spokes"
    prefix.install Dir["usr/share/spokes/*"]

    system "zsh", "--exec", "install.sh"
  end

  test do
    system "false"
  end
end

