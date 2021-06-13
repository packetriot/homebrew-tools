class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"

  url "https://download.packetriot.com/macos/brew/spokes-1.2.2.tar.gz"
  sha256 "0f22715e8296012ca06409777dd3df20225fd58a837917af08a402fcd26a3384"

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

