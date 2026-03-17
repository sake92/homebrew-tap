# Generated with JReleaser 1.23.0 at 2026-03-17T03:00:18.762975793Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.18"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.18/deder-client-linux-x86_64", :using => :nounzip
    sha256 "e9eb7dc03a1e1fe5ad43f22a78bf3a434e9b7ea80e292c55386440db0a956ab5"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.18/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "dfad0a86672b3a05c09717b3df516425848756d18c7af055188a9b08f47a6b16"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.18", output
  end
end
