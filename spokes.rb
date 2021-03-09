class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"

  url "https://download.packetriot.com/macos/brew/spokes-1.1.1.tar.gz"
  sha256 "7f2eeebb90d6c849c22bd1bd929529d31f19792a7ffbdfe84f8fa43d27b20ef0"

  bottle :unneeded

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    bin.install "usr/bin/spokes"
    system "zsh", "--exec", "install.sh"
  end

  test do
    system "false"
  end
end

