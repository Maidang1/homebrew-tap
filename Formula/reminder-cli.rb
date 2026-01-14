class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.9.2/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "c7390acce006028c626927078cbe67da9ddf05d00a2d61f0b1a2539607b065af"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.9.2/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "62b822a4400595eb0b55337d20697701d77c1584cb6c52ef3d3ce7d79a97620d"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.9.2/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "345aeb94f8fe3fe7cd558025b81b6b7dd1dfa0a6c21fe4a1dfc99f4a6ffd7752"
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
