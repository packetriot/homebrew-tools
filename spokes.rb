class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"

  url "https://download.packetriot.com/macos/brew/spokes-1.1.2.tar.gz"
  sha256 "9ead62ddf87051fedec3973a7b641971cde20acf07027c6f2af0926afeeac147"

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

