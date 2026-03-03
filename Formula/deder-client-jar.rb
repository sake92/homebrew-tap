# Generated with JReleaser 1.23.0 at 2026-03-03T13:42:45.695323865Z

class DederClientJar < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  url "https://github.com/sake92/deder/releases/download/v0.0.5/deder-client.jar", :using => :nounzip
  version "0.0.5"
  sha256 "1759b287597b6e58120c860a704b6e2eadc0a36a831f42db0cbdc4ebb2ce955a"
  license "Apache-2"

  depends_on "openjdk@"

  def install
    libexec.install "deder-client.jar"

    bin.mkpath
    File.open("#{bin}/deder-client-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/deder-client.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/deder-client-jar --version")
    assert_match "0.0.5", output
  end
end
