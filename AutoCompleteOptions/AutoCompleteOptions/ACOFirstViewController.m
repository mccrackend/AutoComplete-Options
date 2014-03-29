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

@synthesize arrAutoComplete = _arrAutoComplete;
@synthesize acTableView = _acTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _arrAutoComplete = [NSArray arrayWithObjects:@"Dan", @"Brenda", @"Kara", @"Ryan", nil];
    
    _acTableView = [[UITableView alloc] initWithFrame:
                             CGRectMake(25, 180, 320, 120) style:UITableViewStylePlain];
    _acTableView.delegate = self;
    _acTableView.dataSource = self;
    _acTableView.scrollEnabled = YES;
    _acTableView.hidden = YES;
    [self.view addSubview:_acTableView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    _acTableView.hidden = YES;
}

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_arrAutoComplete count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"CellIdentifier";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [_arrAutoComplete objectAtIndex:indexPath.row];
    
    return cell;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSLog(@"shouldChangeCharactersInRange");
    
    _acTableView.hidden = NO;
    
    NSString *substring = [NSString stringWithString:textField.text];
    substring = [substring
                 stringByReplacingCharactersInRange:range withString:string];
    //[self searchAutocompleteEntriesWithSubstring:substring];
    return NO;
}

















@end
