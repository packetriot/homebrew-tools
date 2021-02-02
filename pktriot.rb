class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.10.8.tar.gz"
  sha256 "6e500d97d75b2ad3350655fb44d8e10c0c3ae2602fd1513be94e319f7e4c25a3"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
