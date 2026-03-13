# Generated with JReleaser 1.23.0 at 2026-03-13T08:55:33.713347875Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.12"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.12/deder-client-linux-x86_64", :using => :nounzip
    sha256 "4449f59670537ab447ea13b3a54f3c4d7350c8e9271e208ecadf6a016514ad36"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.12/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "571a5c132c170fa6c7fe5c6c2ea5f959abf8bc2a60cc251121b7f3577e0bc8da"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.12", output
  end
end
