# Copilot Instructions

このリポジトリには、GitHub Copilot に関する基本的な設定と指示が含まれています。

## 基本設定

- Copilot は、コードの補完や提案を行う際にこのファイルの内容を考慮します。
- 使用する言語やフレームワークに応じて、適切なコメントやコードスニペットを提供します。

## 指示

- **コメントを充実させる**: 提案されたコードには、できるだけ多くのコメントを含めてください。
- **コードの可読性を重視する**: 提案されたコードは、読みやすく、理解しやすいものであるべきです。
- **セキュリティを考慮する**: セキュリティの観点から、潜在的な脆弱性を含まないコードを提案してください。

## コードスタイル

- インデント: スペース4つ
- 行の長さ: 80文字以内
- 変数名: キャメルケース（例: `myVariable`）

## その他

- Copilot の提案が不適切な場合は、手動で修正してください。
- 継続的にフィードバックを提供し、Copilot の提案精度を向上させましょう。

<!-- 以下はCopilotに提案した項目例です。

以下の項目を追加することで、さらに便利な `copilot-instructions.md` ファイルを作成できます。

1. **推奨ライブラリやフレームワーク**:
    - よく使用するライブラリやフレームワークを記載し、それに基づくコード提案を促す。

2. **コードのフォーマット**:
    - コードのフォーマットルール（例：Prettier の設定）を明記する。

3. **特定のコードパターン**:
    - よく使用するコードパターンやテンプレートを提供する。

4. **禁止事項**:
    - 使用しないべきコードパターンやライブラリを明記する。

5. **例**:
    - 良い提案と悪い提案の具体的な例を示す。

### 追加例

```markdown
## 推奨ライブラリやフレームワーク

- React
- Vue.js
- Node.js
- Express

## コードのフォーマット

- フォーマットツール: Prettier
- 設定: 
  ```json
  {
    "printWidth": 80,
    "tabWidth": 4,
    "useTabs": false,
    "semi": true,
    "singleQuote": true,
    "trailingComma": "none"
  }
  ```

## 特定のコードパターン

- コンポーネントベースの設計
- 非同期処理には `async/await` を使用

## 禁止事項

- `eval` 関数の使用禁止
- グローバル変数の使用禁止

## 例

### 良い提案

```javascript
// 良い例: 非同期関数を使ったデータ取得
async function fetchData(url) {
    try {
        const response = await fetch(url);
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Error fetching data:', error);
    }
}
```

### 悪い提案

```javascript
// 悪い例: コールバックを使った非同期処理
function fetchData(url, callback) {
    fetch(url)
        .then(response => response.json())
        .then(data => callback(null, data))
        .catch(error => callback(error));
}
```
```

これらの追加項目を参考にして、`copilot-instructions.md` ファイルをさらに充実させてください。

 -->
