cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.8"
  sha256 arm:   "4bffe4529b3d7331121735e4f681b2e523ea83c443e47e4704f589d6514a7473",
         intel: "91706baceedef4451d44ef68e40eaa2b2ce014a6308d6a70304d08f0451a5e6b"

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
