//
//  NSObject+ApplicationLifecycle.m
//  Sorin Neacsu
//
//  Created by Sorin Neacsu on 2/13/15.
//  Copyright (c) 2015 Sorin Neacsu. All rights reserved.


#import <UIKit/UIApplication.h>
#import "NSObject+ApplicationLifecycle.h"


@implementation NSObject (ApplicationLifecycle)


#pragma mark - ApplicationWillEnterForeground


- (void)observeApplicationWillEnterForeground {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self
           selector:@selector(applicationWillEnterForeground:)
               name:UIApplicationWillEnterForegroundNotification
             object:nil];
}

- (void)removeApplicationWillEnterForegroundObserver {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self name:UIApplicationWillEnterForegroundNotification object:nil];
}

- (void)applicationWillEnterForeground:(NSNotification *)notification {
    [self processApplicationWillEnterForeground];
}

- (void)processApplicationWillEnterForeground {

}


#pragma mark - ApplicationDidBecomeActive


- (void)observeApplicationDidBecomeActive {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self
           selector:@selector(applicationDidBecomeActive:)
               name:UIApplicationDidBecomeActiveNotification
             object:nil];
}

- (void)applicationDidBecomeActive:(NSNotification *)notification {
    [self processApplicationDidBecomeActive];
}

- (void)removeApplicationDidBecomeActiveObserver {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self name:UIApplicationDidBecomeActiveNotification object:nil];

}

- (void)processApplicationDidBecomeActive {

}


@end
