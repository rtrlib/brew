class Rtrlib < Formula
  desc "The RPKI RTR Client C Library"
  homepage "https://rtrlib.realmv6.org"
  url "https://github.com/rtrlib/rtrlib/archive/v0.3.6.tar.gz"
  sha256 "594d6d150bc58f22137b900f53658ba09d2f20121bfaef0ce36a69dd486a9745"

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
