# Generated with JReleaser 1.24.0 at 2026-06-18T08:25:48.594807214Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.19.4"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.19.4/deder-client-linux-x86_64", :using => :nounzip
    sha256 "b0caa322d033c31d2cf9d384bbd6aada732e356f5c8ef89ab78ff979e6d52f68"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.19.4/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "9f1af8add46da1d6533db82e6b85adde3b7606e653f28856c4e9e5b1d0d9e4d7"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.19.4", output
  end
end
