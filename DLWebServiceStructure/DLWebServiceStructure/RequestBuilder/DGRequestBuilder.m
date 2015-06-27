//
//  DGRequestBuilder.m
//  DLWebServiceStructure
//
//  Created by Durgesh Gupta on 6/27/15.
//  Copyright © 2015 Durgesh Gupta. All rights reserved.
//

#import "DGRequestBuilder.h"

@implementation DGRequestBuilder

+ (instancetype)allocWithZone:(NSZone *)zone
{
    static dispatch_once_t onceQueue;
    static DGRequestBuilder *sharedObject = nil;
    dispatch_once(&onceQueue, ^{
        
        if (sharedObject == nil) {
            sharedObject = [super allocWithZone:zone];
        }
    });
    
    return sharedObject;
}

+ (instancetype)sharedObject{
    
    static dispatch_once_t once = 0;
    static DGRequestBuilder *sharedObject;
    
    if (sharedObject) {
        return sharedObject;
    }
    
    dispatch_once(&once, ^{
        
        if (!sharedObject) {
            sharedObject = [[DGRequestBuilder alloc]init];
        }
    });
    
    return sharedObject;
}


@end
