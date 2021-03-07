class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"
  url "https://download.packetriot.com/linux/tarballs/spokes-1.0.5.tar.gz"
  sha256 "05b8037677ebb8133c044c6ef866fd04355ed249e3c58403ecc1d99871878301"
  license ""

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

