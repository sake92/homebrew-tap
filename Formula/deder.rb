# Generated with JReleaser 1.24.0 at 2026-06-05T14:29:35.987601399Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.16.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.16.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "b5d832139577b0a47edf222cb8d95a28841caf7fe8d854771bed151b52f742c9"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.16.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "83f5c5b68c717f921b271ee6ebd8f7385ef66b72023d2ab0c08e5a64dd34e765"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.16.2", output
  end
end
