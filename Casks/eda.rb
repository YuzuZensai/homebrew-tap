cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.14"
  sha256 arm:   "a8f861b944c7c040ae108ecb32983640ab013bbb2158223a62d0d614e1d97c7a",
         intel: "eddf8e65280c3fc9665e9b03a60c6bf32fc6dec88cc7b572fe629340b2625d40"

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
