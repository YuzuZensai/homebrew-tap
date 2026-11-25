cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.16"
  sha256 arm:   "67a4c5547250d0c85779097c50ab626c2d95377cc4826c7b37fe14f8a9e52078",
         intel: "3f85566310ef0f84adedb2d2685849e7d50c35ffaec231a9b829d22ff685e755"

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
