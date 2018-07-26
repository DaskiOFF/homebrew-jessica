class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/daskioff/jessica/archive/1.1.tar.gz"
  sha256 "76e116411de96cdbdbcc8ff53ac348344a47f5c23deec0fe57eda855381621cf"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
