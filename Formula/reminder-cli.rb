class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.3.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "ae6e41bc3830d3c0a936ea9b54e8fca0c6462fbc6a13084d8bdff3753cc84d69"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.3.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "86151ce5ef3d897ed26338e2ee339507f9536025089a422c22b858c44bf5c8a5"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.3.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dc3f990c44ba69d1375bd83ae0f6bd2c83b1d7a59f32428d4336de57e1ed7674"
  end

  def install
    bin.install "reminder"
  end

  test do
    system "#{bin}/reminder", "--help"
  end
end
