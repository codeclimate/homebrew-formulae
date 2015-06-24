require "formula"

class Codeclimate < Formula
  homepage "https://github.com/codeclimate/codeclimate"
  version "0.0.8"

  url "https://github.com/codeclimate/codeclimate/archive/v0.0.8.tar.gz"
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
