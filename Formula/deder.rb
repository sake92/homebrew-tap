# Generated with JReleaser 1.23.0 at 2026-04-02T07:39:41.347340364Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "0012166a912f5e2500b6c3c767f01bf588cf514ee2c843627606c10aef9f06c9"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "788b913243387d13b8be0b46b386b650fe3d8728b8018b58fbf774fa0341f9aa"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.2", output
  end
end
