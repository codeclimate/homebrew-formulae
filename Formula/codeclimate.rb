class Codeclimate < Formula
  desc "Code Climate CLI"
  homepage "https://github.com/codeclimate/codeclimate"
  url "https://github.com/codeclimate/codeclimate/archive/v0.24.3.tar.gz"
  sha256 "70591e62a1c1dd61a56f133d0c0849fd94cfebf146bbdec765a9e01fffa75640"

  def install
    # Alter PATH to ensure `docker' is available
    if Formula["docker"].linked_keg.exist?
      ENV.prepend_path "PATH", Formula["docker"].opt_bin
    end

    ENV["PREFIX"] = prefix

    system "make", "install"
  end

  test do
    system "codeclimate", "help"
  end
end
