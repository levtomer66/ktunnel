# This file was generated by GoReleaser. DO NOT EDIT.
class Ktunnel < Formula
  desc "Network tunneling tool for kubernetes."
  homepage "https://github.com/omrikiei/ktunnel"
  version "1.3.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/omrikiei/ktunnel/releases/download/v1.3.7/ktunnel_1.3.7_Darwin_x86_64.tar.gz"
    sha256 "a84eb1c9bfed902c3062b93261604f18fa0a2ea9d17e468af61800bda7c009a8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.3.7/ktunnel_1.3.7_Linux_x86_64.tar.gz"
      sha256 "b1d8274353c9ba12bc5a3bce7282b8bea91a02be455226994023a8bcbc2db2b1"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/omrikiei/ktunnel/releases/download/v1.3.7/ktunnel_1.3.7_Linux_arm64.tar.gz"
        sha256 "786bfb871f597a9763cd62093fe5a74ff49378bca02fb7b790566b2b35463e74"
      else
      end
    end
  end
  
  head "https://github.com/omrikiei/ktunnel.git"

  def install
    bin.install "ktunnel"
  end

  test do
    system "#{bin}/program version"
  end
end
