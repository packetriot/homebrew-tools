class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.10.3.tar.gz"
  sha256 "7f61e21a3f395a8f7d3bf92e6cb0a488c2b83f97d2a4067fab8ddbd59bc12462"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
