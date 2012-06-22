---
layout: default.ja
style: screen/home.css
---

<section id="cover">
  <h1><span class="main-title">Groonga CloudSearch</span>
      <span class="sub-title">Amazon CloudSearchのオープンソースでの実装</span></h1>
  <p id="description">Groonga CloudSearch（GCS）は、OSSプロジェクトとして開発されている、Amazon CloudSearch（ACS）の代替実装です。
     GCSを使うと、ACSの実際のサービスにアクセスすることなくACSのAPIを試す事ができます。</p>
  <p id="download"><a href="./install.html">ダウンロード</a></p>
</section>


<section id="features">
  <h2>特長</h2>

  <section id="features-acs-compatible">
    <h3>Amazon CloudSearch互換。</h3>
    <p>開発したアプリケーションのバックエンドを、ACSからGCSへ簡単に切り替える事ができます。</p>
  </section>

  <section id="features-oss">
    <h3>オープンソース。</h3>
    <p>誰でも自由に利用でき、開発にも参加できます。</p>
  </section>

<!--
  <section id="features-cjk">
    <h3>Native CJK support.</h3>
    <p>GCS includes powerful tokenizer for CJK texts.</p>
  </section>
-->

  <section id="features-local">
    <h3>ローカル環境での動作。</h3>
    <p>アプリケーションの開発中、いちいちACSにアクセスする必要が無くなります。</p>
  </section>
</section>


## 機能の比較

<table id="functional-comparison-table">
  <thead>
  <tr>
    <th>カテゴリ</th>
    <th>機能</th>
    <th>Groonga CloudSearch</th>
    <th>Amazon CloudSearch</th>
  </tr>
  </thead>

  <tbody>
  <tr>
    <th rowspan="9">設定</th>
    <td>検索ドメインの作成</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>テキスト型のインデックスフィールドの作成</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>認証</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>一度保存されたドキュメントの削除</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>既存の検索ドメインの削除</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>既存の検索ドメインの削除の設定の変更</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>既存の検索ドメインのインデックスフィールドの編集</td>
    <td class="functiona検索対象l-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>検索対象ドキュメントのインデックスの再作成</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>整数、参照など、様々な型のインデックスフィールド</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>

  <tr>
    <th rowspan="4">アップロード</th>
    <td>JSON形式のバッチ（SDFバッチ）による、検索対象ドキュメントのアップロード</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>厳密なバリデーション</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>アトミックなデータベース操作</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>検索対象ドキュメントのバージョン管理</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>

  <tr>
    <th rowspan="7">検索</th>
    <td>単純なクエリによるドキュメントの検索</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>検索結果と同時にファセット情報を提供</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>検索結果の順位</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>活用の変化に対するあいまい検索</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>特定の単語のインデックス化拒否</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>類語に対するあいまい検索</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>複雑なクエリによる検索</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>

  <tr>
    <th rowspan="6">その他</th>
    <td>XML形式でのレスポンスの返却</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>管理用コンソール</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>コマンドライン操作用ツール</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Works on the cloud</td>
    <td class="functional-ng">&#x2715;</td><td class="functional-ok">&#x2713;</td>
  </tr>
  <tr>
    <td>Native CJK support (and better tokenizer)</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ng">&#x2715;</td>
  </tr>
  <tr>
    <td>Works locally</td>
    <td class="functional-ok">&#x2713;</td><td class="functional-ng">&#x2715;</td>
  </tr>
  </tbody>
</table>
