# Generated with JReleaser 1.24.0 at 2026-05-05T08:14:14.631550071Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.7.5"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.7.5/deder-client-linux-x86_64", :using => :nounzip
    sha256 "229c5011102fe7a7b954f959b8a9c24aacc05bac16dcde8d1c99b316facea667"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.7.5/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "27463120ce726232298cdfa9e5e3081cb62b557138621a85e7492c3f0b771bf5"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.7.5", output
  end
end
