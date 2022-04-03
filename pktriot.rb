class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.14.1.tar.gz"
  sha256 "1da8222eaf360a3bcd365197de15ae52ac3c3a47b5c6aec1f3ae23824c208bcd"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
