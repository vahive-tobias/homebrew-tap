class MagusOpensecmcp < Formula
  desc "A deterministic execution firewall for MCP agents"
  homepage "https://github.com/vahive-tobias/magus-opensecmcp"
  
  # Points directly to your main repository's source code
  url "https://github.com/vahive-tobias/magus-opensecmcp.git", branch: "main"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    # Automatically runs 'cargo install' with the correct Homebrew prefix paths
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Verifies the binary was successfully created and is executable
    assert_predicate bin/"magus-gateway", :exist?
  end
end
