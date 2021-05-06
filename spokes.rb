class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"

  url "https://download.packetriot.com/macos/brew/spokes-1.1.2.tar.gz"
  sha256 "46d5a707321cde4e8dc45f304a5f32e847a4c2bf1d742d84da510629b0dbe70b"

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

