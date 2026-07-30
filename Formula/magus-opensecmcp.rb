class MagusOpensecmcp < Formula
  desc "Local-first deterministic execution firewall for MCP agents"
  homepage "https://github.com/vahive-tobias/magus-opensecmcp"
  url "https://github.com/vahive-tobias/magus-opensecmcp.git",
      tag:      "v0.1.1",
      revision: "a1413042744d1d2be33bd1a649796d28bd0250bf"
  version "0.1.1"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    # Note: std_cargo_args automatically includes --locked, --root, and --path .
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/magus-gateway", "--version"
  end
end
