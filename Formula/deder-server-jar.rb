# Generated with JReleaser 1.23.0 at 2026-03-03T13:42:45.695323865Z

class DederServerJar < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  url "https://github.com/sake92/deder/releases/download/v0.0.5/deder-server.jar", :using => :nounzip
  version "0.0.5"
  sha256 "a44c54cfa11f54f1c4d2c417c5690eca8b9f26e1f0d3e734a647e94cbfdf59de"
  license "Apache-2"

  depends_on "openjdk@"

  def install
    libexec.install "deder-server.jar"

    bin.mkpath
    File.open("#{bin}/deder-server-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/deder-server.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/deder-server-jar --version")
    assert_match "0.0.5", output
  end
end
