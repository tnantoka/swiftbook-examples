//
//  ConverterTests.swift
//  ConverterTests
//
//  Created by Tobioka on 2017/10/14.
//  Copyright © 2017年 tnantoka. All rights reserved.
//

import XCTest
@testable import Converter

class ConverterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    /// [marker1]
    func testConvert() {
        // Storyboardファイルからコントローラーを取得
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! ViewController
        
        // ビューにアクセスすることで、ビューを読み込む
        _ = controller.view
        
        // 変換テスト
        controller.textField.text = "text"             // テキストを設定
        controller.onTap(self)                         // ボタンのタップと同じことをする
        XCTAssertEqual(controller.label.text!, "TEXT") // テキストが"TEXT"になっているか確認
    }
    /// [marker1]
}
