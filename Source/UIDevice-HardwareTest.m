//
//  UIDevice+HardwareTest.m
//  VG
//
//  Created by Håvard Fossli on 17.01.13.
//
//

#import <SenTestingKit/SenTestingKit.h>
#import "UIDevice-Hardware.h"

@interface UIDevice_HardwareTest : SenTestCase

@end


@implementation UIDevice_HardwareTest

- (void)testComparisonIPhone
{
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPhone3,3" withOtherPlatform:@"iPhone3,2"];
        STAssertEquals(UIDeviceComparisonResultEqual, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPhone4,2" withOtherPlatform:@"iPhone3,1"];
        STAssertEquals(UIDeviceComparisonResultOtherOlder, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPhone5,1" withOtherPlatform:@"iPhone1,1"];
        STAssertEquals(UIDeviceComparisonResultOtherOlder, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPhone2,1" withOtherPlatform:@"iPhone5,1"];
        STAssertEquals(UIDeviceComparisonResultOtherNewer, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPhone5,1" withOtherPlatform:@"AppleTV2,1"];
        STAssertEquals(UIDeviceComparisonResultFamilyMismatch, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPhone8,5" withOtherPlatform:@"iPhone3,1"];
        STAssertEquals(UIDeviceComparisonResultOtherOlder, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPhone5,1" withOtherPlatform:@"iPhone8,1"];
        STAssertEquals(UIDeviceComparisonResultOtherNewer, result, nil);
    }
}

- (void)testComparisonIPad
{
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPad2,3" withOtherPlatform:@"iPad2,1"];
        STAssertEquals(UIDeviceComparisonResultEqual, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPad2,3" withOtherPlatform:@"iPad1,1"];
        STAssertEquals(UIDeviceComparisonResultOtherOlder, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPad4,2" withOtherPlatform:@"iPad2,1"];
        STAssertEquals(UIDeviceComparisonResultOtherOlder, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPad2,1" withOtherPlatform:@"iPad4,2"];
        STAssertEquals(UIDeviceComparisonResultOtherNewer, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPad3,1" withOtherPlatform:@"AppleTV2,1"];
        STAssertEquals(UIDeviceComparisonResultFamilyMismatch, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPad5,3" withOtherPlatform:@"iPad4,3"];
        STAssertEquals(UIDeviceComparisonResultOtherOlder, result, nil);
    }
    {
        UIDeviceComparisonResult result = [[UIDevice currentDevice] comparePlatform:@"iPad4,3" withOtherPlatform:@"iPad9,5"];
        STAssertEquals(UIDeviceComparisonResultOtherNewer, result, nil);
    }
}

@end
