# Generated with JReleaser 1.24.0 at 2026-05-04T14:50:53.777332843Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.7.4"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.7.4/deder-client-linux-x86_64", :using => :nounzip
    sha256 "0e489d71adf85f205cc030c310f5c3dedb4fbe5bbb7dc7248cda1e0a33a22d88"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.7.4/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "9f2b711e6d42704c1cfbddc8d61d4de8cc861866ecff654e7e8fefb64a3e3839"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.7.4", output
  end
end
