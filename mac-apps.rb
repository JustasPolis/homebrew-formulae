class MacApps < Formula
  desc "CLI tool to query for macOS apps"
  homepage "https://github.com/JustasPolis/mac-apps-cli"
  url "https://github.com/JustasPolis/mac-apps-cli/archive/refs/tags/1.2.0.tar.gz"
  sha256 "116f24b708477fe74365aa5054421351a5c5a723249edf16163fccb0433208d4"
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
