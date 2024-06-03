class MacApps < Formula
  desc "CLI tool to query for macOS apps"
  homepage "https://github.com/JustasPolis/mac-apps-cli"
  url "https://github.com/JustasPolis/mac-apps-cli/archive/refs/tags/1.3.0.tar.gz"
  sha256 "cc6b16898b81c3c9f5a29cc6a09d5b7cc23246d4f16f42e893a10b6810191000"
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
