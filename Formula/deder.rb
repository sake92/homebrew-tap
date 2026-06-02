# Generated with JReleaser 1.24.0 at 2026-06-02T18:58:40.244899243Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.15.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.15.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "9c71529bcb7a0c2212c514fdbe919378210de11706ce10465f1a1064172d6e7a"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.15.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "f8b8f4cb57f44f1ec2559cbf6e4eb6a299484f3d7160640b2d6a0ae718090632"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.15.0", output
  end
end
