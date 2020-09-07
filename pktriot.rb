class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet request to local or private servers."
  homepage "https://packetriot.com"
  url "https://pktriot-dl-bucket.sfo2.digitaloceanspaces.com/releases/macos/brew/pktriot-0.9.19.tar.gz"
  sha256 "3543092b677405768d7df91d3183dbca04c9d1128876481af45673943e414744"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
