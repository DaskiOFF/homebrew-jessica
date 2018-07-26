class Jessica < Formula
  desc "Personal Assistent for iOS project"
  homepage ""
  url "https://github.com/daskioff/jessica/archive/1.2.tar.gz"
  sha256 "31aff46469e2cad76dcc20aa583a05b79b3b18f45846ca30ee510f31c161b622"
  
  depends_on "go@1.9" => :build
  
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jessica" => "jessica"
  end

  test do
    system "#{bin}/jessica", "hi"
  end
end
