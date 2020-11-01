class Pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet requests to local or private servers."
  homepage "https://packetriot.com"

  url "https://download.packetriot.com/macos/brew/pktriot-0.10.2.tar.gz"
  sha256 "6f7b5fd235cde2f88456a77f1fadbec6bb9e37dc03bdfb61294d7d1a8cc9b4fe"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
