class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.13.2.tar.gz"
  sha256 "0e22bbfc2e2e38ee0f7621e93cd92b489c1d1c045767cc4131777eb71c657ea6"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
