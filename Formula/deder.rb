# Generated with JReleaser 1.23.0 at 2026-03-14T00:27:37.536877876Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.13"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.13/deder-client-linux-x86_64", :using => :nounzip
    sha256 "aadbed91cd864acd6d5532d9fba98467cfe5de6c6f4eba57b1f4fa8840713ff0"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.13/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "b43292b35fded7121a54a6a3dba2f072e4d5d449dddc541a3e79ed2909ba1a8b"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.13", output
  end
end
