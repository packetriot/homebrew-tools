class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"

  url "https://download.packetriot.com/macos/brew/spokes-1.3.0.tar.gz"
  sha256 "d926ba3ed836f5b6fcc7a5a987494d9ed3389d8ee52e7b48cc471a5fed771f07"

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

