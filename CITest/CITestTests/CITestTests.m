//
//  CITestTests.m
//  CITestTests
//
//  Created by hzg on 2018/7/31.
//  Copyright © 2018年 tz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface CITestTests : XCTestCase
@property (nonatomic, strong) ViewController* vc;
@end

@implementation CITestTests

- (void)setUp {
    [super setUp];
    self.vc = [ViewController new];
}

- (void)tearDown {
    self.vc = nil;
    [super tearDown];
}

- (void)testExample {
    
    // Given
    int a = 5, b = 6;
    
    // When
    int result = [self.vc add:a with:b];
    
    // Then
    XCTAssertTrue(result = 11, @"测试错误！！");
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
