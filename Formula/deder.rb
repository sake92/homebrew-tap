# Generated with JReleaser 1.24.0 at 2026-05-13T13:23:45.774163344Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.8.3"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.8.3/deder-client-linux-x86_64", :using => :nounzip
    sha256 "b734cf4346ba39b92a895ed934ef9fb9221a951ce1d947c02fddeadcadf4eb57"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.8.3/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "8db86c2cc996ece062ac11d10877c9198c225159f213d87c2d972d184f12caa0"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.8.3", output
  end
end
