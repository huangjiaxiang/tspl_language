import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

class TsplCommand {
  List<int> command = <int>[];

  TsplCommand();

  ///# 设置标签尺寸(mm)
  addSize(int width, int height) {
    String str =
        "SIZE " + width.toString() + " mm," + height.toString() + " mm\r\n";
    this.addStrToCommand(str);
  }

  ///# 设置纸张间隔
  ///m 两标签纸中间的垂直距离 0≤m≤1（inch），0≤m≤25.4（mm）
  ///n 垂直间距偏移 n≤标签纸纸张长度（inch 或 mm）
  addGap(int m, int n) {
    String str = "GAP " + m.toString() + " mm," + n.toString() + " mm\r\n";
    this.addStrToCommand(str);
  }

  ///# 设置打印方向(0,0)
  ///direction：  0(FORWARD), 1(BACKWARD)
  ///mirror:  0(NORMAL), 1(MIRROR)
  addDirection(int direction, int mirror) {
    String str =
        "DIRECTION " + direction.toString() + ',' + mirror.toString() + "\r\n";
    this.addStrToCommand(str);
  }

  ///# 于控制打印时的浓度
  ///density:1-15
  addDensity(int density) {
    String str = "DENSITY " + density.toString() + "\r\n";
    this.addStrToCommand(str);
  }

  ///# 设置打印机自动返回状态
  ///ON 打开自动返回状态功能，每打印一张返回一次
  ///OFF 关闭自动返回状态功能
  ///BATCH 打开自动返回状态功能，打印完毕后返回一次
  addQueryPrinterStatus(String mode) {
    String str = "SET RESPONSE " + mode + "\r\n";
    this.addStrToCommand(str);
  }

  ///# 定义卷标的参考坐标原点
  addReference(int x, int y) {
    String str = "REFERENCE " + x.toString() + "," + y.toString() + "\r\n";
    this.addStrToCommand(str);
  }

  ///# 于清除图像缓冲区的数据
  addCls() {
    String str = "CLS\r\n";
    this.addStrToCommand(str);
  }

  ///# 打印字符串
  ///x 文字 X 方向起始点坐标
  ///y 文字 Y 方向起始点坐标
  ///text 打印内容
  ///字体默认：TSS24.BF2(简体中文 24x24（GB 码）),有需要在开发
  addText(int x, int y, String text) {
    String str = "TEXT " +
        x.toString() +
        "," +
        y.toString() +
        ",\"TSS24.BF2\",0,1,1,\"" +
        text +
        "\"\r\n";

    this.addStrToCommand(str);
  }

  ///# 打印条码
  ///x 左上角水平坐标起点，以点（dot）表示
  ///
  ///y 左上角垂直坐标起点，以点（dot）表示
  ///
  ///height 条形码高度，以点（dot）表示
  ///
  ///打印类型默认 128
  ///
  ///readable 是否显示条码内容  0(不显示)，1(显示)
  ///
  ///旋转方向默认 0
  ///
  ///content  条码内容
  add1DBarcode(int x, int y, int height, int readable, String content) {
    ///窄 bar 宽度，以点（dot）表示
    int narrow = 2;

    ///宽 bar 宽度，以点（dot）表示
    int wide = 2;
    String str = "BARCODE " +
        x.toString() +
        "," +
        y.toString() +
        ",\"128\"," +
        height.toString() +
        "," +
        readable.toString() +
        ",0," +
        narrow.toString() +
        "," +
        wide.toString() +
        ",\"" +
        content +
        "\"\r\n";
    this.addStrToCommand(str);
  }

  ///# 打印出存储于影像缓冲区内的数据
  ///m 份数
  ///n 张数
  addPrint(int m, int n) {
    String str = "PRINT " + m.toString() + "," + n.toString() + "\r\n";
    this.addStrToCommand(str);
  }

  addStrToCommand(String str) {
    List<int> bs = <int>[];
    print(str);
    if (str.isNotEmpty) {
      try {
        bs = gbk_bytes.encode(str);
      } catch (e) {}

      this.command.addAll([...bs]);
    }
  }
}
