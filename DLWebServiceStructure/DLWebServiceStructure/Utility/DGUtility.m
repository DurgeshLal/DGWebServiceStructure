//
//  DGUtility.m
//  DLWebServiceStructure
//
//  Created by Durgesh Gupta on 6/27/15.
//  Copyright © 2015 Durgesh Gupta. All rights reserved.
//

#import "DGUtility.h"

@implementation DGUtility

+ (instancetype)allocWithZone:(NSZone *)zone
{
    static dispatch_once_t onceQueue;
    static DGUtility *sharedUtility = nil;
    dispatch_once(&onceQueue, ^{
        
        if (sharedUtility == nil) {
            sharedUtility = [super allocWithZone:zone];
        }
    });
    
    return sharedUtility;
}

+ (instancetype)sharedUtility{
    
    static dispatch_once_t once = 0;
    static DGUtility *sharedUtility;
    
    if (sharedUtility) {
        return sharedUtility;
    }
    
    dispatch_once(&once, ^{
        
        if (!sharedUtility) {
            sharedUtility = [[DGUtility alloc]init];
        }
    });
    
    return sharedUtility;
}

@end
