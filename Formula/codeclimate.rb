class Codeclimate < Formula
  desc "Code Climate CLI"
  homepage "https://github.com/codeclimate/codeclimate"
  url "https://github.com/codeclimate/codeclimate/archive/v0.85.26.tar.gz"
  sha256 "3ae890aa3cb0471a66cc7e8a26f94adafa530325796cb7841728622c7aa502ce"

  def install
    # Alter PATH to ensure `docker' is available
    if Formula["docker"].linked_keg.exist?
      ENV.prepend_path "PATH", Formula["docker"].opt_bin
    else
      ENV.prepend_path "PATH", "/usr/local/bin"
    end

    ENV["PREFIX"] = prefix

    system "make", "install"
  end

  test do
    system "codeclimate", "help"
  end
end
