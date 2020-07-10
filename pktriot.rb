class Packetriot < Formula
  desc "Packetriot.com client supports tunneling Internet request to local or private servers."
  homepage "https://packetriot.com"
  url "https://pktriot-dl-bucket.sfo2.digitaloceanspaces.com/releases/macos/brew/pktriot-0.9.16.tar.gz"
  sha256 "8fa95deb65119d98abbab00707920f846477d86747ccb3368d2585d26e5eb5fe"

  bottle :unneeded

  def install
    bin.install "pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
