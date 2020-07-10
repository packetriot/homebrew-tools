class pktriot < Formula
  desc "Packetriot.com client supports tunneling Internet request to local or private servers."
  homepage "https://packetriot.com"
  url "https://pktriot-dl-bucket.sfo2.digitaloceanspaces.com/releases/macos/pktriot-0.9.16.macos.tar.gz"
  sha256 "0d046c7738bb85d74a0b46211e6cd25770de7adeda5af75e60c86b91bddf97e3"

  bottle :unneeded

  def install
    bin.install "pktriot-0.9.16/pktriot"
  end

  test do
    system "#{bin}/pktriot", "version"
  end
end
