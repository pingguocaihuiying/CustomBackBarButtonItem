//
//  YYNavigationControllerShouldPopProtocol.h
//  CustomBackBarButtonItem
//
//  Created by qingsong on 15/4/25.
//  Copyright (c) 2015年 qingsong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WFNavigationController;
@protocol YYNavigationControllerShouldPopProtocol <NSObject>

- (BOOL)yy_navigaitonControllerShouldPopWhenSystemBackBtnSelect:(WFNavigationController *)navigationController;
@end
