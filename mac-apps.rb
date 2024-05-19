class MacApps < Formula
  desc "CLI tool to query for macOS apps"
  homepage "https://github.com/JustasPolis/mac-apps-cli"
  url "https://github.com/JustasPolis/mac-apps-cli/archive/refs/tags/1.1.1.tar.gz"
  sha256 "0b08e58e3a00a488aae751377ffa995080ae54036c8a502ea34d0765cae4ffd7"
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
