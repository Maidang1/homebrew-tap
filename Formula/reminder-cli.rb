class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.5.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "5573b97ef43ffcbb964e39310e8afaffff60239103c2d28911090170c34f7690"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.5.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "0e4ee7b40eb8ad13cb143f06a198aee9c19cc30b1132b1d2f4d0fdb72d3cb1d7"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.5.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f921ba7f880271963439ba5d837074a83d20e24e42079b3027caee9c09f3dd64"
  end

  def install
    bin.install "reminder"
  end

  test do
    system "#{bin}/reminder", "--help"
  end
end
