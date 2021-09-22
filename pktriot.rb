class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.11.1.tar.gz"
  sha256 "4739541706fe5333958938c3e1239945978d63eb1c750024844f46a546dcf07c"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
