# WARP.md

このファイルは、このリポジトリでコードを扱う際のWARP（warp.dev）に対するガイダンスを提供します。

## リポジトリの概要

このリポジトリ（.github）は、組織全体で使用する共通設定やテンプレートを管理するための特別なリポジトリです。GitHubの組織レベルで自動的に適用される設定ファイルを配置するために使用されます。

## アーキテクチャと構造

### 主要なディレクトリ構造

```
.github/
├── .github/           # GitHub設定ディレクトリ
├── .vscode/          # Visual Studio Code設定ディレクトリ
└── ルートディレクトリ   # 基本設定ファイル
```

### 重要なファイル

- `copilot-instructions.md`: GitHub Copilotの動作設定とカスタム指示
- `.vscode/mcp.json`: Visual Studio CodeのModel Context Protocol設定
- `LICENSE`: CC0 1.0 Universal (パブリックドメイン)

## コード規約とスタイル

このリポジトリで採用されているコーディング規約：

- インデント: スペース2つ
- 行の長さ: 80文字以内
- 変数名: キャメルケース（例: `myVariable`）

### コードコメントとドキュメント

- コメントは日本語で記述
- コードには詳細な説明コメントを含める
- コードの可読性を重視

## AI開発支援設定

### Perplexity API連携

`.vscode/mcp.json`を通じて、Model Context Protocol (MCP)を使用したAI支援機能が設定されています：

- Perplexity APIとの連携
- セキュアなAPIキー管理
- AIを活用した開発支援

### GitHub Copilot設定

- 日本語でのコード生成と補完
- セキュリティを重視したコード提案
- 推奨ライブラリとフレームワークに基づく提案

## セキュリティ規約

- APIキーなどの機密情報は適切に管理
- セキュリティの脆弱性を含むコードは使用しない
- `eval`関数の使用は禁止
- グローバル変数の使用は禁止
