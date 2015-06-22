require "formula"

class Codeclimate < Formula
  homepage "https://github.com/codeclimate/codeclimate"
  version "0.0.7"

  url "https://github.com/codeclimate/codeclimate/archive/v0.0.7.tar.gz"
  sha1 "ce5efec690264565e1342b50329a03e8aa39e276"

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
