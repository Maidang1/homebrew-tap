class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.1.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "SHA256_FOR_ARM64"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.1.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "SHA256_FOR_X86"
    end
  end

  def install
    bin.install "reminder"
  end

  test do
    system "#{bin}/reminder", "--help"
  end
end
