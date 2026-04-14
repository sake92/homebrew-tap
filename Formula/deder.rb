# Generated with JReleaser 1.23.0 at 2026-04-14T16:15:21.865194014Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.3.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.3.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "ca9b5737169806b8ee9c8f8c9d5cfcd499fbeba4f027c760913cb70cf97ce270"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.3.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "ff5792a977ef68c8cb30dc539e25f9cc977df5039a0236c2cdb24d61e0fe7f40"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.3.2", output
  end
end
