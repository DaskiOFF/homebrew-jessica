class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/DaskiOFF/jessica/archive/1.5.1.tar.gz"
  sha256 "92dbeb8e2b85731a0db57d483c1da6ab9286bc6965b508a3f16c585f5e019307"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
