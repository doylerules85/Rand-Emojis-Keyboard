//
//  KeyboardViewController.m
//  keyboard-extension
//
//  Created by robert doyle on 4/27/19.
//  Copyright © 2019 robert doyle. All rights reserved.
//

#import "KeyboardViewController.h"
#import "MEKeyboardAPIManager.h"

@interface KeyboardViewController ()

@end

@implementation KeyboardViewController

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}


- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
    [self.nextKeyboardButton setTitleColor:textColor forState:UIControlStateNormal];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [[MEKeyboardAPIManager client] setSdkKey:@"8967b69d99c731314f40b5fd01b80f5cb9718192"];
    }
    return self;
}

@end

