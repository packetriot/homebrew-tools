class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.10.1.tar.gz"
  sha256 "5aede04981a5d26d61dbf963bba107164e9010c943f040840433b18e43902f68"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
