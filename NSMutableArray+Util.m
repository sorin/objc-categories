//
//  NSMutableArray+Util.m
//  Sorin Neacsu
//
//  Created by Sorin Neacsu on 2/13/15.
//  Copyright (c) 2015 Sorin Neacsu. All rights reserved.


#import "NSMutableArray+Util.h"


@implementation NSMutableArray (Util)

- (id)shift {
    @synchronized (self) {
        id returnObject = [self firstObject];
        if (returnObject) {
            [self removeObjectAtIndex:0];
        }
        return returnObject;
    }
}

@end
