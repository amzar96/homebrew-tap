cask "machinehealth" do
  version "1.0.1"
  sha256 "ee9cd67d48a01e4e9f16d620d58218f3ec0e363ca44522d739133de3eb792fe6"

  url "https://github.com/amzar96/MachineHealth/releases/download/v#{version}/MachineHealth-#{version}.zip"
  name "MachineHealth"
  desc "Menu bar app showing CPU, RAM, disk, and battery health"
  homepage "https://github.com/amzar96/MachineHealth"

  app "MachineHealth.app"

  caveats <<~EOS
    MachineHealth is not notarized by Apple. If macOS blocks it on first launch, run:
      sudo xattr -dr com.apple.quarantine /Applications/MachineHealth.app
    Or reinstall with:
      brew install --cask --no-quarantine machinehealth
  EOS
end
