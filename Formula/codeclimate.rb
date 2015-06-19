require "formula"

class Codeclimate < Formula
  homepage "https://github.com/codeclimate/codeclimate"
  version "0.0.5"

  url "https://github.com/codeclimate/codeclimate/archive/v0.0.5.tar.gz"
  sha1 "1252d6ec10b579a4d249ff99d1c95977e875f2d3"

  def install
    # Alter PATH to ensure `docker' is available
    system "env", \
      "PATH=/usr/local/bin:#{ENV["PATH"]}", \
      "PREFIX=#{prefix}", "make", "install"
  end

  test do
    system "codeclimate", "help"
  end
end
