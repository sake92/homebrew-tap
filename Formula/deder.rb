# Generated with JReleaser 1.24.0 at 2026-06-16T14:13:08.796466727Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.19.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.19.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "b215446fb5ecc4cc359da7a82c26d1073e1b12cdb485594aabca275db31a85e3"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.19.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "9446c4eeefe0482e44d6b80bed39077fa8c179d911a63e96fc1c062bce325a5d"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.19.1", output
  end
end
