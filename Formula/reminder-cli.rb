class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.8.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "03b651117451ba67e27c2a2edf4f57ace9a8d7ebe2e0bc1c933c3059818642f1"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.8.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "b9eac3c10ed9a0fd838d2cbc168fdc587dc00518dd18b4359c3286d36569395c"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.8.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "66fa98c8b8376ed5f06e51f56622377cb68c77e8f2f1897a176beb22c106a13b"
  end

  def install
    bin.install "reminder"
    bin.install "rem"
  end

  test do
    system "#{bin}/reminder", "--help"
    system "#{bin}/rem", "--help"
  end
end
