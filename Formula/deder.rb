# Generated with JReleaser 1.23.0 at 2026-04-14T11:22:07.564881092Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.3.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.3.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "9d0feff5bd85a042c41a3be84a7ceceae262420defaab51581156ed470ca8bc1"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.3.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "7624a94c8b2bc36c772db3c7624e2f9367183e56b9f1b464e242238cdbbd2d03"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.3.0", output
  end
end
