# セットアップ方法
##

## 計画表
Week 1：環境構築と設計
目標
開発基盤を整え、設計方針を固める。
タスク
Qt, Julia, Docker, GitHub Actions の環境構築
GitHub リポジトリ初期化・構造整備
要件定義・画面構成の最終確認

Week 2：C++ UI原型作成
目標
UIレイアウトとイベント処理の基礎を作る。
タスク
Qtでウィンドウ・入力欄・ボタンの作成
UIControllerの実装（ボタン押下処理）
グラフ表示エリアの仮置き

Week 3：Julia連携の基盤構築
目標
C++からJuliaを呼び出せる状態にする。
タスク
Julia側Main.jlのプロトタイプ作成
QProcessによる数式の受け渡し実装
ダミーPNG生成 → C++で画像表示確認
Week 4：数式解析と計算処理
目標
数式の解釈と演算機能をJuliaに実装する。
タスク
ExpressionParser.jl（Symbolics.jl）の実装
Calculator.jlで関数評価・微積分実装
Juliaのユニットテスト作成

Week 5：グラフ描画機能の実装
目標
2D・3DのグラフをJuliaで描画可能にする。
タスク
GraphPlotter2D3D.jlの実装
PNG保存機能（ResultExporter）
グラフの表示確認（Makie or PlotlyJS）

Week 6：連携統合とエラー処理
目標
C++⇔Juliaの全機能を統合し、エラー処理を導入。
タスク
計算・描画をフル連携
異常系処理と標準エラー受け取り実装
C++側ErrorHandlerの整備

Week 7：全体テストとCI整備
目標
ユニット・結合・E2Eテストを網羅しCIを回す。
タスク
C++、Juliaテストコード追加
E2Eテストの流れ作成
GitHub Actionsによる自動テスト設定

Week 8：ユーザーテストとリリース準備
目標
UX確認と最終仕上げを行い、リリースに備える。
タスク
ユーザーテスト実施と改善対応
READMEや使用手順の整備
バイナリ生成とクロスビルド
安定版タグ付けと公開