# Generated with JReleaser 1.24.0 at 2026-05-03T16:23:49.680553336Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.7.3"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.7.3/deder-client-linux-x86_64", :using => :nounzip
    sha256 "f454d034f2e2729cb9222e9446bf201d16ef442902e96cd3291c899197874e6f"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.7.3/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "9f9001835d777fec476270f2b841c8a130c10bc9a6cb3d3f9970fad2c2353bbc"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.7.3", output
  end
end
