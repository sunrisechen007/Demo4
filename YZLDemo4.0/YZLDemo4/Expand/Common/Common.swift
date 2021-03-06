//
//  Common.swift
//  YZLDemo4
//
//  Created by Xu Chen on 2018/11/5.
//  Copyright © 2018 xu.yzl. All rights reserved.
//  Swift 中的 宏定义的意义, 在swift中, 并非是预编译代码替换, 而是设置全局常量

import UIKit

/// RGB颜色
///
/// - Parameters:
///   - r: r
///   - g: g
///   - b: b
/// - Returns: UIColor
func kRGBColor(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
    return UIColor.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
}

/// 16进制颜色
///
/// - Parameter h: h - 0xe6e6e6
/// - Returns: UIColor
func kRGBColor_hex(h: Int) -> UIColor {
    return kRGBColor(r: CGFloat(((h)>>16) & 0xFF), g:   CGFloat(((h)>>8) & 0xFF), b:  CGFloat((h) & 0xFF))
}

/// 导航栏背景色
let kNavbarBgColor: UIColor = kRGBColor(r: 62, g: 131, b: 229)
/// 视图默认背景色
let kBgColor: UIColor = kRGBColor(r: 245, g: 247, b: 249)


let kScreenWidth = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height
let kWindow = (UIApplication.shared.keyWindow)!
let kNavigationBarHeight = UIApplication.shared.statusBarFrame.height + 44
let kTabbarHeight: CGFloat = (UIApplication.shared.statusBarFrame.height > 20) ? 83 : 49


/// 首页列表分区头视图高度
let kHomeCollectionSectionHeaderHeight: CGFloat = 50
/// 首页头部高度
let kHomeTopViewHeight: CGFloat = 440
