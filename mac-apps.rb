class MacApps < Formula
  desc "CLI tool to query for macOS apps"
  homepage "https://github.com/JustasPolis/mac-apps-cli"
  url "https://github.com/JustasPolis/mac-apps-cli/archive/refs/tags/1.0.0.tar.gz"
  sha256 "0b3cd5f4582688e8ba5770ad2675d36af81ac44d32a7edab3822792c574c8fe7"
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
