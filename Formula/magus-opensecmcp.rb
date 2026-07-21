class MagusOpensecmcp < Formula
  desc "Local-first execution firewall for MCP agents"
  homepage "https://github.com/vahive-tobias/magus-opensecmcp"
  url "https://github.com/vahive-tobias/magus-opensecmcp.git",
      tag:      "v0.1.0",
      revision: "ff3e9aaf99ee3ffa8fda087f30721336421d8d0e"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    # Note: std_cargo_args automatically includes --locked, --root, and --path .
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/magus-gateway", "--version"
  end
end
