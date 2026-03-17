# Generated with JReleaser 1.23.0 at 2026-03-17T02:34:41.701878349Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.17"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.17/deder-client-linux-x86_64", :using => :nounzip
    sha256 "1c1d0bbf62120f1234afff51ac071b98edbe04f93bd150bcdc6dd2701c0fb84b"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.17/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "31031d9a897c6e02715a86c5f0cda9b5abd02ae0985b444733eba4b7f4ee0d10"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.17", output
  end
end
