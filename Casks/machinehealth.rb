cask "machinehealth" do
  version "1.0.0"
  sha256 "559e068800c8d1203a3b4d32e263ff6a0b4d7b0ea602fdcb7d94d11f56328d97"

  url "https://github.com/amzar96/MachineHealth/releases/download/v#{version}/MachineHealth-#{version}.zip"
  name "MachineHealth"
  desc "Menu bar app showing CPU, RAM, disk, and battery health"
  homepage "https://github.com/amzar96/MachineHealth"

  app "MachineHealth.app"

  caveat <<~EOS
    MachineHealth is not notarized by Apple. If macOS blocks it on first launch, run:
      sudo xattr -dr com.apple.quarantine /Applications/MachineHealth.app
    Or reinstall with:
      brew install --cask --no-quarantine machinehealth
  EOS
end
