class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"

  url "https://download.packetriot.com/macos/brew/spokes-1.1.1.tar.gz"
  sha256 "80f5a1804c40ffdaaf7f2345bc4e5f9c591998309188413006a44b6488e83bdb"

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

