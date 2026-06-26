# TradingView MCP Integration

This repository integrates the [tradingview-mcp](https://github.com/atilaahmettaner/tradingview-mcp) server with Claude and other MCP-compatible AI assistants.

## Features

- 30+ MCP tools for real-time market data and technical analysis
- Multi-exchange support: Binance, KuCoin, NASDAQ, NYSE, BIST, EGX
- 9 trading strategies with walk-forward validation
- No API keys required for core functionality

## Setup

### Option 1: uvx (Recommended)

Add to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "tradingview": {
      "command": "uvx",
      "args": ["--from", "tradingview-mcp-server", "tradingview-mcp"]
    }
  }
}
```

### Option 2: pip install

```bash
pip install tradingview-mcp-server
```

Then configure:

```json
{
  "mcpServers": {
    "tradingview": {
      "command": "tradingview-mcp"
    }
  }
}
```

### Option 3: Docker

```bash
docker compose up -d
```

## Configuration Files

- `claude_desktop_config.json` — Claude Desktop MCP config
- `docker-compose.yml` — Docker deployment
- `.claude/mcp.json` — Claude Code MCP config

## Source

Powered by [atilaahmettaner/tradingview-mcp](https://github.com/atilaahmettaner/tradingview-mcp) (MIT License)
