# .github

2025年1月に再構築したグローバルな設定リポジトリです（日本語）

このリポジトリは、組織全体で使用する共通設定やテンプレートを管理するための特別なリポジトリです。`.github`という名前のリポジトリは、GitHubの組織レベルで自動的に適用される設定ファイルを配置するために使用されます。

## ファイル構成と説明

### 📁 ディレクトリ構成

```
.github/
├── .github/           # GitHub設定ディレクトリ
├── .vscode/          # Visual Studio Code設定ディレクトリ  
├── LICENSE           # ライセンスファイル
├── README.md         # プロジェクト説明（このファイル）
└── copilot-instructions.md  # Copilot指示ファイル
```

### 📋 各ファイルの詳細説明

#### `.github/copilot-instructions.md`
- **目的**: GitHub Copilotの動作設定とカスタム指示
- **内容**: Copilotがコード補完や提案を行う際の基本設定とルール
- **適用範囲**: 組織内の全リポジトリで自動適用
- **言語**: 日本語でのコード提案とコメント生成を指示

#### `.vscode/mcp.json` 
- **目的**: Visual Studio CodeのModel Context Protocol設定
- **内容**: Perplexity APIを使用したMCPサーバーの設定
- **機能**: 
  - セキュアなAPI キーの管理
  - 外部AIサービスとの連携設定
  - 開発環境での生産性向上支援

#### `copilot-instructions.md` (ルートディレクトリ)
- **目的**: GitHub Copilotの詳細な指示とガイドライン
- **特徴**:
  - 日本語でのコード生成指示
  - セキュリティを重視した開発ルール
  - コードスタイルとフォーマット規約
  - 推奨ライブラリとフレームワークの指定
- **使用例**: コード補完時の品質向上、一貫したコーディング規約の適用

#### `LICENSE`
- **ライセンス**: CC0 1.0 Universal (パブリックドメイン)
- **意味**: このリポジトリの内容は著作権が放棄されており、自由に使用可能
- **利点**: 組織や個人が自由にコピー・改変・再配布が可能

#### `README.md`
- **目的**: プロジェクトの概要説明とドキュメント
- **内容**: リポジトリの目的、ファイル構成、使用方法の説明
- **対象**: 開発者、新規参加者、組織メンバー

## 🚀 使用方法

### 1. 組織レベルでの自動適用
- `.github`リポジトリの設定は、組織内の全リポジトリに自動適用されます
- 新しいリポジトリを作成すると、これらの設定が自動的に利用可能になります

### 2. Copilot設定のカスタマイズ
- `copilot-instructions.md`の内容を編集することで、組織全体のCopilot動作を調整できます
- 日本語でのコメント生成、特定のコーディング規約の適用が可能です

### 3. VS Code設定の利用
- `.vscode/mcp.json`により、Perplexity APIなど外部サービスとの連携が可能
- 開発時のAI支援機能が強化されます

## 🔧 メンテナンス

このリポジトリの設定は組織全体に影響するため、変更は慎重に行ってください：

1. **設定変更前**: テストリポジトリでの動作確認
2. **レビュー**: 組織メンバーによる設定内容の確認
3. **段階的適用**: 影響範囲を考慮した慎重なロールアウト

## 参考リンク

- [Custom instructions for GitHub Copilot in VS Code](https://code.visualstudio.com/docs/copilot/copilot-customization)
- [GitHub 組織レベル設定について](https://docs.github.com/ja/organizations)
- [Model Context Protocol (MCP)](https://github.com/ppl-ai/modelcontextprotocol/)
