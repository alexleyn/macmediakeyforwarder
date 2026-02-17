//
//  GBLaunchAtLogin.m
//  GBLaunchAtLogin
//
//  Created by Luka Mirosevic on 04/03/2013.
//  Copyright (c) 2013 Goonbee. All rights reserved.
//

#import "GBLaunchAtLogin.h"
#import <ServiceManagement/ServiceManagement.h>

@implementation GBLaunchAtLogin

+(BOOL)isLoginItem {
    return SMAppService.mainAppService.status == SMAppServiceStatusEnabled;
}

+(void)addAppAsLoginItem {
    NSError *error = nil;
    [SMAppService.mainAppService registerAndReturnError:&error];
}

+(void)removeAppFromLoginItems {
    NSError *error = nil;
    [SMAppService.mainAppService unregisterAndReturnError:&error];
}

@end
