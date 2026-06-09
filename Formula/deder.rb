# Generated with JReleaser 1.24.0 at 2026-06-09T19:53:28.860532347Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.17.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.17.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "068072440376fbf93ec5d1baf8108985809fc27a111cbbd80cb0f2197987fc0b"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.17.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "bd3d6d1ec421e5ef63e7171f20dde114e732ac54dc0a846c348c80c71aa0acde"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.17.0", output
  end
end
