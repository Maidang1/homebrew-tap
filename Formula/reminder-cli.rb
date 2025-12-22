class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.4.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "4424cf96f15143c8b5edd36ab32e515362b1cbc6c9a93a0649da5e6cd487b2f7"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.4.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "83af58ea725378501b15ea575738e595773bfef88e36f4a02ea1c9c89d3f7c68"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.4.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "73d52469a9be35a29a3b04278b85929aa186722c75300d0a4077024a6c247261"
  end

  def install
    bin.install "reminder"
  end

  test do
    system "#{bin}/reminder", "--help"
  end
end
