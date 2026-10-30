# Generated with JReleaser 1.26.0 at 2026-10-30T15:54:19.397562394Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.22.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.22.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "6ea5dae57e9d2274eee9b09f08989b8b572315307aae47f892590a0d452324b7"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.22.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "2bcb77479426b769824c1f81c10a67232c8d47e5a7d798fa7027176394c41ff3"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.22.1", output
  end
end
