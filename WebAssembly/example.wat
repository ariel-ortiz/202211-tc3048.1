;; Simple WebAssembly example.

(module
  (func
    ;; Function signature: i32 duplicate(i32 $x)
    (export "duplicate")
    (param $x i32)
    (result i32)

    ;; Body of the function
    local.get $x
    i32.const 2
    i32.mul
  )
  (func
    (export "inc")
    (param $a f64)
    (result f64)
    local.get $a
    f64.const 1
    f64.add
  )

  (func
    (export "chicharronera")
    (param $a f64)
    (param $b f64)
    (param $c f64)
    (result f64)

    ;; -b
    local.get $b
    f64.neg

    ;; b^2
    local.get $b
    local.get $b
    f64.mul

    ;; 4ac
    f64.const 4
    local.get $a
    f64.mul
    local.get $c
    f64.mul

    f64.sub
    f64.sqrt
    f64.add

    ;; 2a
    f64.const 2
    local.get $a
    f64.mul

    f64.div
  )
)
