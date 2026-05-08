# Generated with JReleaser 1.24.0 at 2026-05-08T09:27:57.08725501Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.7.7"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.7.7/deder-client-linux-x86_64", :using => :nounzip
    sha256 "0473c521a70ac634254219105ea902b0647144c787f4dc11d4a3ad96edfa7c6d"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.7.7/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "17e095d9e6b53d34ee661dcd90aebb0ab1630a1d4e57067b16694b8a30be2faf"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.7.7", output
  end
end
