# verilog_TD4
Verilogで実装したTD4(CPU)
## 参考書籍
渡波郁 (2003) 「CPUの創りかた」マイナビ出版

## シミュレーション
```bash
iverilog -o sim register.v counter.v decoder.v multiplexer.v alu.v rom_blink.v td4.v testbench.v
vvp sim > log.txt
gtkwave wave.vcd
```

## MU200-ECへの書き込み
```bash
#コンパイル
quartus_sh --flow compie td4
```
USB-Blasterを接続し，Quartus II Programmerにて書き込み．

## サンプルプログラムについて
`rom_blink.v`:Lチカ
`rom_timer.v`:ラーメンタイマー

## 入力について
実は横着して入力は0に固定してある．
（サンプルで入力使ってないし…）

