//
//  DGDataManager.m
//  DLWebServiceStructure
//
//  Created by Durgesh Gupta on 6/27/15.
//  Copyright © 2015 Durgesh Gupta. All rights reserved.
//

#import "DGDataManager.h"

@implementation DGDataManager

+ (instancetype)allocWithZone:(NSZone *)zone
{
    static dispatch_once_t onceQueue;
    static DGDataManager *sharedManager = nil;
    dispatch_once(&onceQueue, ^{
        
        if (sharedManager == nil) {
            sharedManager = [super allocWithZone:zone];
        }
    });
    
    return sharedManager;
}

+ (instancetype)sharedManager{
    
    static dispatch_once_t once = 0;
    static DGDataManager *sharedManager;
    
    if (sharedManager) {
        return sharedManager;
    }
    
    dispatch_once(&once, ^{
        
        if (!sharedManager) {
            sharedManager = [[DGDataManager alloc]init];
        }
    });
    
    return sharedManager;
}


@end
