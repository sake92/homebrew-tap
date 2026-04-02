# Generated with JReleaser 1.23.0 at 2026-04-02T07:07:44.404991973Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "195a4cf0ae96ef26168da58809e210dbf9b99f2daa666015324e2ca1e7cd02ad"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "bf555d2f4fb1383e713658cdf67bcc3ff43ca1e3126f5773ae0ccc95cc26f207"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.0", output
  end
end
