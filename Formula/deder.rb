# Generated with JReleaser 1.23.0 at 2026-04-02T14:44:12.295312701Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.13"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.13/deder-client-linux-x86_64", :using => :nounzip
    sha256 "5fdded0782a5300d489d3cdc5a46e94d0d1e2a4f9c513441b0c47e231bfa6985"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.13/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "18cf9a6b217327b97c2562d81461b06130edf87f18be71cd1e904e2b310c64e6"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.13", output
  end
end
