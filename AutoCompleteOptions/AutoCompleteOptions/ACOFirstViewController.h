//
//  ACOFirstViewController.h
//  AutoCompleteOptions
//
//  Created by Dan McCracken on 3/25/14.
//  Copyright (c) 2014 Elusive Apps, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACOFirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate> {

    NSArray *arrSource;
    NSMutableArray *arrAutoComplete;
    UITableView *acTableView;
    UITextField *txtField;
    
}

@property (nonatomic, retain) NSArray *arrSource;
@property (nonatomic, retain) NSMutableArray *arrAutoComplete;
@property (nonatomic, retain) UITableView *acTableView;
@property (nonatomic, retain) IBOutlet UITextField *txtField;

@end