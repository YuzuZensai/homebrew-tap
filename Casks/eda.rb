cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.4"
  sha256 arm:   "70d509d7f13fed3f50aeccca482b62326dc0aac82aaf4b961311e9bead67ac75",
         intel: "0cb6bcfaaae98c9df69c5628e29d640e11a3c267ed442429909abd377a93800b"

  url "https://github.com/YuzuZensai/Eda/releases/download/#{version}/Eda-#{version}-osx-#{arch}-stable.dmg"
  name "Eda"
  desc "Git client with visual repository history"
  homepage "https://eda.kirameki.cafe/"

  depends_on :macos

  app "Eda.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Eda.app"],
                   must_succeed: true
  end
end
