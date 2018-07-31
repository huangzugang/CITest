//
//  CITest2Tests.m
//  CITest2Tests
//
//  Created by hzg on 2018/7/31.
//  Copyright © 2018年 tz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface CITest2Tests : XCTestCase
@property (nonatomic, strong) ViewController* vc;
@end

@implementation CITest2Tests

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
    int result = [self.vc sum:a with:b];
    
    // Then
    XCTAssertTrue(result == 11, @"测试失败");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
