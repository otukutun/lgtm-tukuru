# APIドキュメント

## エンドポイント
- [GET /api/images](#GET-/api/images)

### GET /api/images

LGTM画像一覧を返すAPI

#### リクエスト
- params
  - exclude_ids
    - [任意] 指定したIDを除いて取得する
  - count
    - [任意] 取得件数を指定する. デフォルトは20件. 最大50件取得できる.
  - type
    - [任意] latest, randomから選べる。デフォルトではlatestで最新順で取得する.

#### レスポンス


##### 200

```
[
  {
    id: "d43063a7b7b7b5fc205af98b38dd9bc619130c3e",
    image_url: "http://localhost:3000/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--38191789af0eedf5a301513db969f86f73b4246a/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld3M2QzNKbGMybDZaVWtpRERZd01IZzJNREFHT2daRlZEb0pabWxzYkVraURDTkdSa1pHUmtZR093ZFVPZ2xtYjI1MFNTSUtRWEpwWVd3R093ZFVPZzV3YjJsdWRITnBlbVZwVlRvTVozSmhkbWwwZVVraUMwTmxiblJsY2dZN0IxUTZDV1J5WVhkSkloUjBaWGgwSURBc01DQW5URWRVVFNjR093ZFUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--60221eda4d066ad0ba60249c8ac464013d5d224a/tutorial_1_text.jpg",
    markdown_text: "![LGTM](http://localhost:3000/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--38191789af0eedf5a301513db969f86f73b4246a/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld3M2QzNKbGMybDZaVWtpRERZd01IZzJNREFHT2daRlZEb0pabWxzYkVraURDTkdSa1pHUmtZR093ZFVPZ2xtYjI1MFNTSUtRWEpwWVd3R093ZFVPZzV3YjJsdWRITnBlbVZwVlRvTVozSmhkbWwwZVVraUMwTmxiblJsY2dZN0IxUTZDV1J5WVhkSkloUjBaWGgwSURBc01DQW5URWRVVFNjR093ZFUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--60221eda4d066ad0ba60249c8ac464013d5d224a/tutorial_1_text.jpg)",
    url: "http://localhost:3000/images/d43063a7b7b7b5fc205af98b38dd9bc619130c3e"
  },
  {
    id: "d43063a7b7b7b5fc205af98b38dd9bc619130c3e",
    image_url: "http://localhost:3000/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--38191789af0eedf5a301513db969f86f73b4246a/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld3M2QzNKbGMybDZaVWtpRERZd01IZzJNREFHT2daRlZEb0pabWxzYkVraURDTkdSa1pHUmtZR093ZFVPZ2xtYjI1MFNTSUtRWEpwWVd3R093ZFVPZzV3YjJsdWRITnBlbVZwVlRvTVozSmhkbWwwZVVraUMwTmxiblJsY2dZN0IxUTZDV1J5WVhkSkloUjBaWGgwSURBc01DQW5URWRVVFNjR093ZFUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--60221eda4d066ad0ba60249c8ac464013d5d224a/tutorial_1_text.jpg",
    markdown_text: "![LGTM](http://localhost:3000/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--38191789af0eedf5a301513db969f86f73b4246a/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld3M2QzNKbGMybDZaVWtpRERZd01IZzJNREFHT2daRlZEb0pabWxzYkVraURDTkdSa1pHUmtZR093ZFVPZ2xtYjI1MFNTSUtRWEpwWVd3R093ZFVPZzV3YjJsdWRITnBlbVZwVlRvTVozSmhkbWwwZVVraUMwTmxiblJsY2dZN0IxUTZDV1J5WVhkSkloUjBaWGgwSURBc01DQW5URWRVVFNjR093ZFUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--60221eda4d066ad0ba60249c8ac464013d5d224a/tutorial_1_text.jpg)",
    url: "http://localhost:3000/images/d43063a7b7b7b5fc205af98b38dd9bc619130c3e"
  }
]
```
