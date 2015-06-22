require "formula"

class Codeclimate < Formula
  homepage "https://github.com/codeclimate/codeclimate"
  version "0.0.7"

  url "https://github.com/codeclimate/codeclimate/archive/v0.0.7.tar.gz"
  sha1 "9e2b70d12d89ba85cc0174fed5aa473b500a5f12"

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
