# Generated with JReleaser 1.26.0 at 2026-09-23T12:29:51.169074189Z


cask "flatmark" do
  desc "Static site generator"
  homepage "https://sake92.github.io/flatmark/"
  url "https://github.com/sake92/flatmark/releases/download/v0.2.0/flatmark-1.0.0.pkg",
      verified: "github.com"
  version "0.2.0"
  sha256 "77e5a510bbb36346dcf109d009c92e46fdcaed19c5780bbfdf70ac6f400ffe71"
  name "Flatmark"


  pkg "flatmark-1.0.0.pkg"
  uninstall pkgutil: "ba.sake.flatmark",
            delete: "/usr/local/bin/flatmark"
end
