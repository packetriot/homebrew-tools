class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet request to local or private servers."
  homepage "https://packetriot.com"
  url "https://pktriot-dl-bucket.sfo2.digitaloceanspaces.com/releases/macos/brew/pktriot-0.9.19.tar.gz"
  sha256 "3ca981947a964bedc0e70ba3859b2d526d633f5cd094201b44f01dc718d017a3"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
