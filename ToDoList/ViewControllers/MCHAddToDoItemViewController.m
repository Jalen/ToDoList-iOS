//
//  MCHAddToDoItemViewController.m
//  ToDoList
//
//  Created by wangjiay on 4/22/14.
//  Copyright (c) 2014 zhaohengtech. All rights reserved.
//

#import "MCHAddToDoItemViewController.h"

@interface MCHAddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation MCHAddToDoItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if(sender != self.doneButton) return;
    
    if (self.textField.text.length > 0) {
        self.todoItem = [[MCHToDoItem alloc] init];
        self.todoItem.itemName = self.textField.text;
        self.todoItem.completed = NO;
    }
}


@end
