class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.11.0.tar.gz"
  sha256 "888ac156b757a9a6a3be8215becc7b6ac683a4125d868cf204636efb5812eee2"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
