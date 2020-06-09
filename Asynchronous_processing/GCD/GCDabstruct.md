## メインディスパッチキューを取得

```swift
import Dispatch
let queue = DispatchQueue.main
```

グローバルキュー
- 並列ディスパッチキュー
- 実行優先度を指定して取得する。

####  優先度 →Qos（Quality of Service)


## 新規のディスパッチキュー生成

DispatchQueue型のイニシャライザから、新たにディスパッチキューを生成する方法もある

```swift
import Dispatch

let que = DispatchQueue(
    label: "sample",
    qos: .default,
    attributes: [.concurrent]
)
```


