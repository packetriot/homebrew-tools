class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet request to local or private servers."
  homepage "https://packetriot.com"
  url "https://pktriot-dl-bucket.sfo2.digitaloceanspaces.com/releases/macos/brew/pktriot-0.9.19.tar.gz"
  sha256 "235b09b759937186221d191f3414426136c3ff8377b0c75cea17d0b735b8cefc"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
