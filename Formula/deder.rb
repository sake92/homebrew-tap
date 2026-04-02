# Generated with JReleaser 1.23.0 at 2026-04-02T08:57:34.9097016Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.4"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.4/deder-client-linux-x86_64", :using => :nounzip
    sha256 "c451b4a17f3511df1878443dc4640159a264be4d331c23941a66dbbc74a3889c"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.4/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "a7f8561a73ecdb1af695aa419d9d34e004b5995d5b63077b59b9ddaad7cb0fed"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.4", output
  end
end
