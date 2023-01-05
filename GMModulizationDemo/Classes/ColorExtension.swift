//
//  ColorExtension.swift
//  youonBikePlanA
//
//  Created by gmj on 2021/9/7.
//  Copyright © 2021 audi. All rights reserved.
//

import Foundation

public extension UIColor {
     /// 在门锁升级页面中 背景的颜色
     static var bgView: UIColor = UIColor(hex: "#F8F8FA")
     
     /// 在门锁升级页面中 按钮的文字颜色
     static var buttonText: UIColor = UIColor(hex: "#1D78F7")

     /// 按钮禁用的背景色
     static var buttonDisable: UIColor = UIColor(hex: "#60A0F9")

     /// 在门锁升级页面中 升级按钮的 背景色
     static var buttonBg: UIColor = UIColor(hex: "#1D78F7", alpha: 0.06)
     
     /// 在门锁升级页面中 升级按钮的 边框颜色
     static var buttonBorder: UIColor = UIColor(hex: "#1D78F7", alpha: 0.1)
     
     /// 在门锁升级页面中 安装按钮 disable状态下 文本颜色
     static var buttonTextDisable: UIColor = UIColor(hex: "#BBBDC6")
     
     /// 在门锁升级页面中 安装按钮 disable状态下 背景颜色
     static var buttonDisableBg: UIColor = UIColor(hex: "#1F2642", alpha: 0.04)
     
     /// 在门锁升级页面中 安装按钮 disable状态下 边框颜色
     static var buttonDisableBorder: UIColor = UIColor(hex: "#1F2642", alpha: 0.06)
     
     /// 在拍摄身份证页面中的 提示语背景色
     static var darkBlueView: UIColor = UIColor(hex: "#1F2642")
     
     /// 在拍摄身份证页面中的 顶部和底部 视图的背景色
     static var idTopAndBottomBg: UIColor = UIColor(hex: "#131415")
     
     /// 灰色 小字体
     static var smallText: UIColor = UIColor(hex: "#8F92A0")
     
     /// 分割线 颜色
     static var lineGray: UIColor = UIColor(hex: "#E8E9EC")
     
     /// 橙色字体 
     static var orangeColor: UIColor = UIColor(hex: "#FF531A")
     /// 橙色背景
     static var orangeBg: UIColor = UIColor(hex: "#FF531A", alpha: 0.04)

     /// 灰色
     static var greyColor: UIColor = UIColor(hex: "#62677A")
     /// 红色
     static var redColor: UIColor = UIColor(hex: "#FF4A50")

     /// tableview 的背景色 浅灰
     static var tableBackColor: UIColor = UIColor(hex: "#F6F6F6")
     
     /// 门卡开锁记录log页面中 的灰色
     static var point: UIColor = UIColor(hex: "#D8D8D8")
     
     /// 门卡开锁记录log页面中 的 开锁失败时 的颜色
     static var pinkDot: UIColor = UIColor(hex: "#FF3434")
     /// 粉色按钮 bgColor
     static var pinkDotBg: UIColor = UIColor(hex: "#FF3434", alpha: 0.06)
}

public extension UIColor {
     /// 16进制字符串转颜色
     /// - Parameter hex: 16进制字符串
    convenience init(hex: String, alpha: CGFloat = 1.0) {
          
          var red:   CGFloat = 0.0
          var green: CGFloat = 0.0
          var blue:  CGFloat = 0.0
          var alpha: CGFloat = alpha
          var hex:   String = hex
          
          if hex.hasPrefix("#") {
               let index = hex.index(hex.startIndex, offsetBy: 1)
               hex = String(hex[index...])
          }
          
          let scanner = Scanner(string: hex)
          var hexValue: CUnsignedLongLong = 0
          if scanner.scanHexInt64(&hexValue) {
               switch (hex.count) {
               case 3:
                    red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
                    green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
                    blue  = CGFloat(hexValue & 0x00F)              / 15.0
               case 4:
                    red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
                    green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
                    blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
                    alpha = CGFloat(hexValue & 0x000F)             / 15.0
               case 6:
                    red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
                    green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
                    blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
               case 8:
                    red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                    green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                    blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                    alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
               default:
                    print("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8", terminator: "")
               }
          } else {
               print("Scan hex error")
          }
          
          self.init(red:red, green:green, blue:blue, alpha:alpha)
     }
}
