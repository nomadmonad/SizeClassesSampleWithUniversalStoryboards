//
//  ViewController.m
//  SizeClassesSampleWithUniversalStoryboards
//
//  Created by tyamamo on 2014/12/12.
//  Copyright (c) 2014年 private. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

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

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection
{
    UITraitCollection * trait = self.traitCollection;
    NSLog(@"##### verticalSizeClass: :%d", trait.verticalSizeClass);
    NSLog(@"##### horizontalSizeClass: :%d", trait.horizontalSizeClass);
    if (trait.verticalSizeClass == UIUserInterfaceSizeClassRegular
        && trait.horizontalSizeClass == UIUserInterfaceSizeClassCompact) {
        self.label.text = @"iPhone Portrait";
    }
    else if (trait.verticalSizeClass == UIUserInterfaceSizeClassCompact
             && trait.horizontalSizeClass == UIUserInterfaceSizeClassCompact) {
        self.label.text = @"iPhone 4s/5/5s/6 Landscape";
    }
    else if (trait.verticalSizeClass == UIUserInterfaceSizeClassCompact
             && trait.horizontalSizeClass == UIUserInterfaceSizeClassRegular) {
        self.label.text = @"iPhone 6 Plus Landscape";
    }
    else {
        self.label.text = @"iPad";
    }
}


@end
