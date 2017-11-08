class Rtrlib < Formula
  desc "The RPKI RTR Client C Library"
  homepage "https://rtrlib.realmv6.org"
  url "https://github.com/rtrlib/rtrlib/archive/v0.5.0.tar.gz"
  sha256 "8b1f2fa0501ae3a7a0a73447df1ee1b3735281f9b47c17479e9ca08eb6f55f69"

  depends_on "cmake" => :build
  depends_on "libssh" => :recommended
  depends_on "doxygen" => :optional

  def install
    mkdir "build" do
      system "cmake", "-DCMAKE_BUILD_TYPE=Release", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    shell_output("#{bin}/cli-validator 2>&1", 1)
  end
end
