class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/DaskiOFF/jessica/archive/1.3.5.tar.gz"
  sha256 "564a964bd70e875f88cb9d7f07f4d34d8233a8092c8a1f6bb4d6fad1a7c298cc"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
