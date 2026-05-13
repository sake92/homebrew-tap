# Generated with JReleaser 1.24.0 at 2026-05-13T12:30:30.747189636Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.8.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.8.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "b9e3036fe27d85387325ba71bb957a7a678f2b771501d9e14ab87a96b9f2b25f"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.8.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "28fec756a0804ef85b1e8031a22510fa849bfc38215034ca0a1cb3a578251cd8"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.8.1", output
  end
end
