//
//  ViewController.m
//  customControl
//
//  Created by Aleix Guri on 1/9/18.
//  Copyright © 2018 Aleix Guri. All rights reserved.
//

#import "ViewController.h"
#import "LoadingView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet LoadingView *myCustomLoading;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didUpdateSlider:(UISlider *)sender {
    
    [self.myCustomLoading updateEndValue:sender.value];
}


@end
