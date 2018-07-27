class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/DaskiOFF/jessica/archive/1.3.2.tar.gz"
  sha256 "42f4fb80f45ce08a85ba4c547b07b1fa3e396b61d9684bb88299224073ab2331"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
