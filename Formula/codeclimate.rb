class Codeclimate < Formula
  desc "Code Climate CLI"
  homepage "https://github.com/codeclimate/codeclimate"
  url "https://github.com/codeclimate/codeclimate/archive/v0.48.0.tar.gz"
  sha256 "ca4484b72e973f053cc48c0261e42c8d12172e7001826cd5bfeb1ce82c04e031"

  def install
    # Alter PATH to ensure `docker' is available
    if Formula["docker"].linked_keg.exist?
      ENV.prepend_path "PATH", Formula["docker"].opt_bin
    else
      ENV.prepend_path "PATH", "/usr/local/bin"
    end

    ENV["PREFIX"] = prefix
    ENV["SKIP_ENGINES"] = "1"

    system "make", "install"
  end

  def caveats; <<-EOS.undent
    To update engines run the following in your project directory:

      $ codeclimate engines:install
    EOS
  end

  test do
    system "codeclimate", "help"
  end
end
