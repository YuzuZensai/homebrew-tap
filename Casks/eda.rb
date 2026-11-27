cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "ce74bdb1bc7da2b3cf65e40368b117fae38b4bc55c7feaa060512b96d89e54f7",
         intel: "2a65e79655f8bd507e6b9f612cbc2ae4c416b77ce81e2460c966ee5178e329ad"

  url "https://github.com/YuzuZensai/Eda/releases/download/#{version}/Eda-#{version}-osx-#{arch}-stable.dmg"
  name "Eda"
  desc "Git client with visual repository history"
  homepage "https://eda.kirameki.cafe/"

  depends_on :macos

  app "Eda.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/Eda.app"],
        must_succeed: true
  end
end
