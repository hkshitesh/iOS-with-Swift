//
//  ViewController.m
//  DemoObjectiveCProg
//
//  Created by Hitesh Sharma - Vendor on 07/06/24.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myTitleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)setTitleLabel:(id)sender {
    [_myTitleLabel setText:@"Hello Obective-C"];
}


@end
