class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/daskioff/jessica/archive/1.5.tar.gz"
  sha256 "56bfb4ebb918e54a0e96fb3aa2df9e2282f65fdedbb1586d465d35ced7dace45"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
