class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.14.0.tar.gz"
  sha256 "632cc133b43263f3e92855b0514fd0fc847b396f2f7fa3f1a3e73fb42d2f5f93"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
