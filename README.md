# todoman
A simple TODO manager.

---

## 特徴
+ TODO リストをmarkdown形式で作成します。
+ TODO リストは1日1ファイルとして扱います。
+ <Leader>tn で直近日のTODOファイルをコピーして今日のTODOリストを作成します。
+ <Leader>to で今日のTODOファイルを開きます。

## 内容
1. [Installation](#installation)
1. [Options](#options)
1. [Mappings](#mappings)

## Installation
NeoBundle推奨。

```vim
NeoBundle 'hskksk/todoman'
```

## Options
### Enable Mapping
```vim
let g:todoman_do_mapping=1
```

### Configure TODO List directory
```vim
let g:todoman_directory="$HOME/todoman"
```

## Mappings
+ \<Leader\>tn: 直近日のTODOファイルをコピーして今日のTODOリストを作成します。
+ \<Leader\>to: 今日のTODOファイルを開きます。
