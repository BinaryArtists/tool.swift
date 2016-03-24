//
//  MacroFunctions.swift
//  SwiftProject
//
//  Created by 王云鹏 on 16/3/2.
//  Copyright © 2016年 王涛. All rights reserved.
//

import Foundation

/// Debug Log
let debug = true
func DLog (value: Any , fileName : String = #file, line : Int32 = #line ){
    if debug {
        print("文件：\(NSURL(string: fileName)!.lastPathComponent!)  行：\(line) 内容:\(value)\n")
    }
}

func DBRgb(r:CGFloat,g:CGFloat,b:CGFloat) -> UIColor{
    return UIColor(red:r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}

func DBFrame(x:CGFloat,y:CGFloat,width:CGFloat,height:CGFloat) -> CGRect{
    return CGRectMake(x, y, width, height)
}

func DBNib(nibName:String) ->UINib{
    return UINib(nibName:nibName, bundle: NSBundle.mainBundle())
}

let DBWidth:CGFloat = UIScreen.mainScreen().bounds.size.width
let DBHeight:CGFloat = UIScreen.mainScreen().bounds.size.height


//MARK:简写的实例化
let DBDefault = NSUserDefaults.standardUserDefaults()
let DBNotificationCenter = NSNotificationCenter.defaultCenter()
let DBAppDelegate  = UIApplication.sharedApplication().delegate as! AppDelegate

let DBTrue = true
let DBFalse = false


//MARK:流水线加工控件
/**
流水线label
居中 背景白色label
- returns: 居中 背景白色label 12号字体 灰度102，102，102  单行
*/
func factoryLabel() -> UILabel{
    let label = UILabel()
    label.textAlignment = .Center
    label.backgroundColor = UIColor.whiteColor()
    label.font = UIFont.systemFontOfSize(12)
    label.numberOfLines = 1
    label.textColor = DBRgb(102, g: 102, b: 102)
    return label
}

/**
 流水线View
 背景白色
 */
func factoryView() -> UIView{
    let view = UIView()
    view.backgroundColor = UIColor.whiteColor()
    return view
}

