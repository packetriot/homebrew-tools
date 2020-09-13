class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot/macos/brew/pktriot-0.9.19.tar.gz"
  sha256 "41b8213ecd24c7ee089633381e72a915169fb6bc86219938f64f59dc036f12cd"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
