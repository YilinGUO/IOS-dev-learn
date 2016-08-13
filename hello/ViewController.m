//
//  ViewController.m
//  hello
//
//  Created by Elaine Guo on 8/12/16.
//  Copyright © 2016 Elaine Guo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usrTxFd;
@property (weak, nonatomic) IBOutlet UITextField *psTxFd;
@property (weak, nonatomic) IBOutlet UILabel *notilb;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.username = @"Bob";
    self.password = @"safe";
     
    self.psTxFd.secureTextEntry = YES;
}

- (IBAction)sbtbt:(id)sender {
    bool isUsrEqual = [self.username isEqualToString:[self.usrTxFd text]];
    bool isPdEqual = [self.password isEqualToString:[self.psTxFd text]];
    if (isUsrEqual && isPdEqual) {
        NSLog(@"Success!");
        [self.notilb setText:@"Congrat!"];
    }
    else {
        NSLog(@"Failure");
        [self.notilb setText:@"Failure"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
@end
