# Generated with JReleaser 1.23.0 at 2026-04-02T09:08:20.409262369Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.5"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.5/deder-client-linux-x86_64", :using => :nounzip
    sha256 "c7485bf39efb43171cf37f928ff6ba6af390a0119cb6eb1aecee6bf578c78be3"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.5/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "6b9fdd4391d9448cfd344d403f666b8066b392f8ca90d3814586217450d5efeb"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.5", output
  end
end
