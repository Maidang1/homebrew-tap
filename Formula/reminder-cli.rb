class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.3.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "24f7b70a76a86b92b35b42a2f3aee6f44d6d341809ee2c600473d88a44e22ad3"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.3.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "fde8eb4decfc8bae5767e8647b292bf8a8be3438267d9cff85085f7a1d3a97a5"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.3.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6933c2bd7318e0501c03265ea1e45a62e872845a07e4e05c4be46b12ba9db493"
  end

  def install
    bin.install "reminder"
  end

  test do
    system "#{bin}/reminder", "--help"
  end
end
