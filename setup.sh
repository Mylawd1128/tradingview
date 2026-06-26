#!/bin/bash
# Install and run TradingView MCP server

set -e

echo "Installing tradingview-mcp-server..."
pip install tradingview-mcp-server

echo "Done! Run 'tradingview-mcp' to start the server."
echo ""
echo "Or add to your claude_desktop_config.json:"
echo '{
  "mcpServers": {
    "tradingview": {
      "command": "uvx",
      "args": ["--from", "tradingview-mcp-server", "tradingview-mcp"]
    }
  }
}'
