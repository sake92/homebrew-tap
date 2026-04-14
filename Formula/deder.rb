# Generated with JReleaser 1.23.0 at 2026-04-14T15:14:48.157925328Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.3.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.3.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "8ae990334a30d1afa9333e67f8293cda9d8c68d94edf53d9f4e5f0ce138576c7"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.3.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "ca01d1949fe499838256af0a377f20cf69eb6f9a90764f96ba5699bef05c4641"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.3.1", output
  end
end
