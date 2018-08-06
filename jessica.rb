class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/DaskiOFF/jessica/archive/1.3.4.tar.gz"
  sha256 "7986a71e7913241f54e01e2fc00773244280568ea80f598f14bef6ee82c9e414"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
