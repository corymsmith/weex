//
//  WXViewModule.m
//  WeexSDK
//
//  Created by 齐山 on 16/9/22.
//  Copyright © 2016 taobao. All rights reserved.
//

#import "WXViewModule.h"
#import "WXTextInputComponent.h"

@implementation WXViewModule

@synthesize weexInstance;

WX_EXPORT_METHOD(@selector(focus:))
WX_EXPORT_METHOD(@selector(blur:))

- (void)focus:(NSString *)elemRef
{
     WXComponent *comp = (WXComponent *)[self.weexInstance componentForRef:elemRef];
    UIView *view = comp.view;
    [comp.view becomeFirstResponder];
    
}

- (void)blur:(NSString *)elemRef{
    WXComponent *comp = (WXComponent *)[self.weexInstance componentForRef:elemRef];
    [comp.view resignFirstResponder];
}


@end
