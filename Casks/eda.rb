cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.6"
  sha256 arm:   "58447d325442b75db429217a95ac209b8582ef85c3394fa434520fa926d93db1",
         intel: "d3f6962cda8cead2a6747b8ab7ff5a044d075d51bc3538e5d35f7b6690818707"

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
