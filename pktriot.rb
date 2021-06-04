class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.10.9.tar.gz"
  sha256 "9d083272e14b905cf0417d08ec0e406224c3329f9652ed6b952fa2f4a2d27ab9"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
