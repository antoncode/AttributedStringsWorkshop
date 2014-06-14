//
//  ViewController.m
//  AttributedStrings
//
//  Created by Anton Rivera on 6/14/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            
@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSDictionary *attributes = @{NSForegroundColorAttributeName:    [UIColor redColor]};
    
//    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"The Republic by Plato"
//                                                                           attributes:attributes];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@"The Republic by Plato"];
    
    NSRange rangeOfTitle = [attributedString.string rangeOfString:@"The Republic"];
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[UIColor redColor]
                             range:rangeOfTitle];
    
    NSRange rangeOfAuthor = [attributedString.string rangeOfString:@"Plato"];
    UIFont *font = [UIFont fontWithName:@"HelveticaNeue-Italic" size:self.label.font.pointSize];
    [attributedString addAttribute:NSFontAttributeName value:font range:rangeOfAuthor];
    
    self.label.attributedText = attributedString;
}

@end
