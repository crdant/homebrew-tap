class CredhubCli < Formula
  desc "CredHub CLI"
  homepage "https://github.com/cloudfoundry-incubator/credhub-cli"
  version "2.0.1"

  if OS.mac?
    head 'https://packages.cloudfoundry.org/edge?arch=macosx64&source=homebrew'
    url "https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/2.0.1/credhub-darwin-2.0.1.tgz"
    sha256 "f72e7a8281e6c8d992be231e2062a4d9dae2f41f6ba0c0eea3eef831ea795033"
  elsif OS.linux?
    url "https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/2.0.1/credhub-linux-2.0.1.tgz"
    sha256 'e08bb45a83c5569f754faa4bed24cf1de66942289f449bc039c5b00fedaa2200'
  end

  depends_on :arch => :x86_64

  def install
    bin.install "credhub"
  end

  test do
    system "#{bin}/credhub --help"
  end
end
