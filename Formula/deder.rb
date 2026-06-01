# Generated with JReleaser 1.24.0 at 2026-06-01T08:36:49.073455917Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.14.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.14.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "553831870e45e8a2fcb9c8cab927bb349a872cb4925ad1a2eacfb8a0d0903f69"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.14.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "dba249d66a510b16388751b865d51fb1fb1569cfd6387260209d6a98c0a94127"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.14.0", output
  end
end
