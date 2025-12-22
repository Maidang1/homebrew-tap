class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.6.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "41ff2cddbc8dc999fdf993ab618f53fbd11c9d903bdb904d2d8028dfe185902f"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.6.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "80c0ffc470b4328e66e8b26d8c12897b059d7ba9edfdd9fd85a042ab1442456d"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.6.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0a1fa59ff36218d7a0ddeae3d880a97884e7ee414da5c6d2596ffb769fafb989"
  end

  def install
    bin.install "reminder"
  end

  test do
    system "#{bin}/reminder", "--help"
  end
end
