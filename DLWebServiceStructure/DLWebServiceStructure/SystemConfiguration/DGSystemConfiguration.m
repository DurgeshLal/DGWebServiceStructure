//
//  DGSystemConfiguration.m
//  DLWebServiceStructure
//
//  Created by Durgesh Gupta on 6/27/15.
//  Copyright © 2015 Durgesh Gupta. All rights reserved.
//

#import "DGSystemConfiguration.h"

@implementation DGSystemConfiguration

+ (instancetype)allocWithZone:(NSZone *)zone
{
    static dispatch_once_t onceQueue;
    static DGSystemConfiguration *sharedConfiguration = nil;
    dispatch_once(&onceQueue, ^{
        
        if (sharedConfiguration == nil) {
            sharedConfiguration = [super allocWithZone:zone];
        }
    });
    
    return sharedConfiguration;
}

+ (instancetype)sharedConfiguration{
    
    static dispatch_once_t once = 0;
    static DGSystemConfiguration *sharedConfiguration;
    
    if (sharedConfiguration) {
        return sharedConfiguration;
    }
    
    dispatch_once(&once, ^{
        
        if (!sharedConfiguration) {
            sharedConfiguration = [[DGSystemConfiguration alloc]init];
        }
    });
    
    return sharedConfiguration;
}


@end
