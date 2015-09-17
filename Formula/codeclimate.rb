require "formula"

class Codeclimate < Formula
  CODECLIMATE_VERSION = "0.4.3".freeze

  homepage "https://github.com/codeclimate/codeclimate"
  version CODECLIMATE_VERSION

  url "https://github.com/codeclimate/codeclimate/archive/v#{CODECLIMATE_VERSION}.tar.gz"
  sha1 "55b09a9ef98a3a59efdf0d4e587eaf0ed4887328"

  def install
    # Alter PATH to ensure `docker' is available
    system "env", \
      "PATH=#{HOMEBREW_PREFIX}/bin:#{ENV["PATH"]}", \
      "PREFIX=#{prefix}", "make", "install"
  end

  test do
    system "codeclimate", "help"
  end
end
