class PythonRtrlib < Formula
  desc "A Python binding for the RTRlib"
  homepage "https://rtrlib.realmv6.org"
  head "https://github.com/rtrlib/python-binding.git"

  depends_on "libffi"
  depends_on "pkg-config"
  depends_on "rtrlib"
  depends_on :python

  def install
    system "pip", "install", "cffi"
    system "python", "setup.py", "build"
    system "python", "setup.py", "install"
  end

  test do
    system "python", "-c", "import rtrlib"
  end
end
