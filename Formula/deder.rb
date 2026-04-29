# Generated with JReleaser 1.23.0 at 2026-04-29T11:01:57.362999456Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.7.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.7.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "511044bfbe0851b0944e8e06b77e1e1b86d10c37999e45edd861795ed9582ca4"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.7.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "e46cdd4085be88f9756c4387d852c2f3f74ac41cc48d9f348f0ed5a96bc16d50"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.7.1", output
  end
end
