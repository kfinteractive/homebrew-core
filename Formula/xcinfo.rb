class Xcinfo < Formula
  desc "Tool to get information about and install available Xcode versions"
  homepage "https://github.com/xcodereleases/xcinfo"
  url "https://github.com/xcodereleases/xcinfo/archive/0.5.0.tar.gz"
  sha256 "07b6c2f5a5b6a5f3cd6d190ac16c36c5011a87f2a1da2a109ccaa909eb6bcc2c"
  license "MIT"

  depends_on xcode: "12.0"

  def install
    system "swift", "build",
           "--configuration", "release",
           "--disable-sandbox"
    bin.install ".build/release/xcinfo"
  end

  test do
    system "true"
  end
end
