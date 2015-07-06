require "formula"

class Codeclimate < Formula
  CODECLIMATE_VERSION = "0.0.18".freeze

  homepage "https://github.com/codeclimate/codeclimate"
  version CODECLIMATE_VERSION

  url "https://github.com/codeclimate/codeclimate/archive/v#{CODECLIMATE_VERSION}.tar.gz"
  sha1 "5e55477cdfa77d8fca8f80df8b8b60d43615aacd"

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
