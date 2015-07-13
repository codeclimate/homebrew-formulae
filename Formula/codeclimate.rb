require "formula"

class Codeclimate < Formula
  CODECLIMATE_VERSION = "0.0.24".freeze

  homepage "https://github.com/codeclimate/codeclimate"
  version CODECLIMATE_VERSION

  url "https://github.com/codeclimate/codeclimate/archive/v#{CODECLIMATE_VERSION}.tar.gz"
  sha1 "58a1221357d610d241b0a9feabcc7358b900ced9"

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
