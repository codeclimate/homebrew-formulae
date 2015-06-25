require "formula"

class Codeclimate < Formula
  homepage "https://github.com/codeclimate/codeclimate"
  version "0.0.9"

  url "https://github.com/codeclimate/codeclimate/archive/v0.0.9.tar.gz"
  sha1 "b37f3a34e77c07c6c0ac4e78224a08fcf30e08f2"

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
