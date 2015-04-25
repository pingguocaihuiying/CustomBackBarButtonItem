//
//  WFNavigationController.m
//  CustomBackBarButtonItem
//
//  Created by qingsong on 15/4/25.
//  Copyright (c) 2015年 qingsong. All rights reserved.
//

#import "WFNavigationController.h"
#import "YYNavigationControllerShouldPopProtocol.h"

@interface UINavigationController (UInavigationControllerNeedshouldPopItem)
- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item;
@end

#pragma clang diagnostic push
#pragma clang diagnostic idnored"-Wincomplete-implementation"
@implementation UINavigationController (UInavigationControllerNeedshouldPopItem)

@end
#pragma clang diagnostic pop
//以上几行就是使用Category 使UInavigationController将其实现的navigationBar:shouldPopItem

@interface WFNavigationController ()<UINavigationBarDelegate>

@end

@implementation WFNavigationController

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item
{
    UIViewController * vc = self.topViewController;
    
    if (item != vc.navigationItem) {
        return [super navigationBar:navigationBar shouldPopItem:item];
    }
    
    if ([vc conformsToProtocol:@protocol(YYNavigationControllerShouldPopProtocol)]) {
        
        if ([(id<YYNavigationControllerShouldPopProtocol>)vc yy_navigaitonControllerShouldPopWhenSystemBackBtnSelect:self]) {
            
            return [super navigationBar:navigationBar shouldPopItem:item];
        
        }else{
            
            return NO;
        }
    }else{
        
        return [super navigationBar:navigationBar shouldPopItem:item];;
    }
    
}
/*
- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item
{
    UIViewController * vc = self.topViewController;
    
    if ([vc respondsToSelector:@selector(controllerWillPopHandler)]) {
        
        if ([vc performSelector:@selector(controllerWillPopHandler)]) {
            
            return [super navigationBar:navigationBar shouldPopItem:item];
        
        }else{
            
            return NO;
        }
    }else{
        
        return [super navigationBar:navigationBar shouldPopItem:item];
    }
}
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
