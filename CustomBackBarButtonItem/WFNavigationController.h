//
//  WFNavigationController.h
//  CustomBackBarButtonItem
//
//  Created by qingsong on 15/4/25.
//  Copyright (c) 2015年 qingsong. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WFNavigationControllerDelegate <NSObject>

@optional

- (BOOL)controllerWillPopHandler;

@end

@interface WFNavigationController : UINavigationController

@end
