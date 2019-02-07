//
//  Plugin.m
//  TestMac
//
//  Created by DINO2 on 07/02/2019.
//  Copyright © 2019 DINO2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestMac_Prefix.h"

@interface Plugin : NSObject
{
    
}
- (void)Test:(const char *) text;
@end

@implementation Plugin

- (void)Test:(const char *) Text{
    NSLog(@"dino test : %s", Text);
}

@end

Plugin* PluginObject = nil;

int AVUnity_Test (const char* text){
    PluginObject = [Plugin alloc];
    [PluginObject Test:text];
    
    return 1;
}
