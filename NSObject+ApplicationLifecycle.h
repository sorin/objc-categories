//
//  NSObject+ApplicationLifecycle.h
//  Sorin Neacsu
//
//  Created by Sorin Neacsu on 2/13/15.
//  Copyright (c) 2015 Sorin Neacsu. All rights reserved.


#import <Foundation/Foundation.h>


@interface NSObject (ApplicationLifecycle)

- (void)observeApplicationWillEnterForeground;
- (void)removeApplicationWillEnterForegroundObserver;
- (void)processApplicationWillEnterForeground;

- (void)observeApplicationDidBecomeActive;
- (void)removeApplicationDidBecomeActiveObserver;
- (void)processApplicationDidBecomeActive;

@end
