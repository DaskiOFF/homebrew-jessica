class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/DaskiOFF/jessica/archive/1.3.tar.gz"
  sha256 "606be4bac5b020cda0bc58b27b49e6db260210711c8a5c32c29c1acbd2773a32"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
