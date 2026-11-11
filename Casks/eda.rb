cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.9"
  sha256 arm:   "3dca687f5b55cf3196485bda7b37cf4ec1bb0cab0fbfef3983d8b576ea376cc4",
         intel: "0f80c1e8bfc370382a73ca4b733b8123a242db15e27e77b187caaaf5d27d35f7"

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
