class MacApps < Formula
  desc "CLI tool to query for macOS apps"
  homepage "https://github.com/JustasPolis/mac-apps-cli"
  url "https://github.com/JustasPolis/mac-apps-cli/archive/refs/tags/1.1.0.tar.gz"
  sha256 "908d88834074ac39b90977d5a4d26d9418c00071e40f32284b518a3f1232c72e"
  license "MIT"

  depends_on xcode: [">= 15.2", :build]
  depends_on macos: [
    :sonoma,
  ]

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/mac-apps"
  end

  test do
    system "true"
  end
end
