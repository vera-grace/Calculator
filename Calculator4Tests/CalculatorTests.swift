//
//  CalculatorTests.swift
//  Calculator4Tests
//
//  Created by Vera Braginets on 24/05/2021.
//

import XCTest
@testable import Calculator4

class CalculatorTests: XCTestCase {

    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        
        sut = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController")
        sut.loadViewIfNeeded()
      
    }

    func testMinus() {
        sut.label.text = "3"
        sut.minus(UIButton())
        sut.label.text = "1"
        sut.one(UIButton())
        sut.equally(UIButton())
        XCTAssert(sut.label.text == "2")
        sut.minus(UIButton())
        XCTAssert(sut.label.text == "2")
        sut.one(UIButton())
        XCTAssert(sut.label.text == "1")
        sut.equally(UIButton())
        XCTAssert(sut.label.text == "1")
    }
    
    func testPuntDivide() {
        sut.nine(UIButton())
        sut.punt(UIButton())
        sut.three(UIButton())
        sut.divide(UIButton())
        sut.three(UIButton())
        sut.equally(UIButton())
        XCTAssert(sut.label.text == "3.1")
    }
    
    func testPercSum (){
        sut.label.text = "100"
        XCTAssert(sut.label.text == "100")
        sut.summB(UIButton())
        sut.label.text = "20"
        sut.perc(UIButton())
        sut.equally(UIButton())
        XCTAssertEqual (sut.label.text, "120")
    }
    
    func testPercMinus (){
        sut.label.text = "100"
        XCTAssert(sut.label.text == "100")
        sut.minus(UIButton())
        sut.label.text = "20"
        sut.perc(UIButton())
        sut.equally(UIButton())
        XCTAssert(sut.label.text == "80")
    }
    
    func testPercent (){
        sut.label.text = "5"
        sut.number1 = 25
        sut.perc(UIButton())
        XCTAssertEqual(sut.label.text, "1.25")
    }
   
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    


}
