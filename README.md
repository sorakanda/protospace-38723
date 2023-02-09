# テーブル設計

## user　テーブル

 | Column              | Type    | Options        |
 | --------------------| ------- | -------------- |
 | email               | string  | null: false    |
 | encrypted_password  | string  | null: false    |
 | name                | string  | null: false    |
 | profile             | text    | null: false    |
 | occupation          | text    | null: false    |
 | position            | text    | null: false    |

 ## prototypes テーブル