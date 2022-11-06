# aperta(アペルタ)

### 使用したtech stacks
Solidity<br>

### 使用したBlockchain
Ethereum<br>

### deployしたContract(ExplorerでOK）
<https://goerli.etherscan.io/address/0xdfe476048202d469607561d92bfe8ba4d6f47026#code><br>

### application codeやその他のfile
UI(figma)のURL:
<https://www.figma.com/proto/p2mr62DaAsgSYawhlJ8OWb/%E6%9D%B1%E4%BA%ACWeb3%E3%83%8F%E3%83%83%E3%82%AB%E3%82%BD%E3%83%B3_221106?node-id=30%3A7&scaling=contain&page-id=0%3A1&starting-point-node-id=30%3A7> <br>

### テスト手順を含むリポジトリへのリンク
UI・UXをfigmaで確認<br>

### 審査やテストのためにプロジェクトにアクセスする方法など
UI・UXをfigmaで確認<br>


### 概要
課題<br>
人の能力・行動履歴などの属性は、より価値を発揮できる場所があるはずなのに所属コミュニティ・エコシステム（C）外には伝わりづらい→SBT化し追跡可能にすればC外でも価値を発揮できる<br>
<br>
前提<br>
現状wallet自体の譲渡を完璧に防ぐ仕組みがなく、能力・経歴等のSBT化は難点が多いが、比較的ライトな行動の傾向などを表すのにはSBTを利用できそう<br>
<br>
方針<br>
そこで購買履歴をSBTにして顕在化し、その所有者に対する外部からのマーケティングを可能にすることで、そのエコシステム外でも価値を発揮できる仕組みを作る<br>
<br>
プロダクト説明<br>
①対象店舗X（例えばマクド）のユーザAはアプリでレシートを1回読み取る毎にXのSBT（ERC1155で店毎にIDが対応）を1つ入手できる<br>
※X公認ではなくレシートで判別してアプリ側で発行<br>
②広告主側Y（例えばモス）はAをターゲットにしたNFTクーポンを発行することができる<br>
③Aは②のクーポンを欲しければフリーミントし、Yでの使用・二次流通が可能<br>
<br>
展望<br>
・トケノミクスの導入によるユーザのインセンティブ増加とエコシステム創造<br>
・Xにもメリット(SBT発行時にユーザアンケートを挟むなど)を与えSBTを公認化<br>
