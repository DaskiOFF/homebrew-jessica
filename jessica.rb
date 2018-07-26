class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/daskioff/jessica/archive/1.0.tar.gz"
  sha256 "b3733953a8b3224a5ad7e61b7388ff3c5c38d810c3f365c933cf351b1d71ddde"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
