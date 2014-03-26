//
//  ACOFirstViewController.m
//  AutoCompleteOptions
//
//  Created by Dan McCracken on 3/25/14.
//  Copyright (c) 2014 Elusive Apps, LLC. All rights reserved.
//

#import "ACOFirstViewController.h"

@interface ACOFirstViewController ()

@end

@implementation ACOFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
