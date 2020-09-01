class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet request to local or private servers."
  homepage "https://packetriot.com"
  url "https://pktriot-dl-bucket.sfo2.digitaloceanspaces.com/releases/macos/brew/pktriot-0.9.19.tar.gz"
  sha256 "c56d53c38d2f8a7e7b2e07e8e26d0816015751212a9f5174cc15651e126aa06c"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
