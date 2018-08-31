class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/daskioff/jessica/archive/1.4.tar.gz"
  sha256 "f8533c02bf70469405c7e8d11003e8d6716ee346757f5d1d948f75c17623b947"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
