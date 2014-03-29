//
//  ACOFirstViewController.h
//  AutoCompleteOptions
//
//  Created by Dan McCracken on 3/25/14.
//  Copyright (c) 2014 Elusive Apps, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACOFirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate> {

    NSArray *arrAutoComplete;
    UITableView *acTableView;
    
}

@property (nonatomic, retain) NSArray *arrAutoComplete;
@property (nonatomic, retain) UITableView *acTableView;

@end