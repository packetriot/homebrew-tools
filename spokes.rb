class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"

  url "https://download.packetriot.com/macos/brew/spokes-1.1.1.tar.gz"
  sha256 "f5e1de1bfd2c822fd940da5722d665368abf93310dbb69e0e69571eb7312ba09"

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

