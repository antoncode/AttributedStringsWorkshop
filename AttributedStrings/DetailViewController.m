//
//  DetailViewController.m
//  AttributedStrings
//
//  Created by Anton Rivera on 6/14/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) NSDictionary *titleAttributes;

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

//    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:@"Speech"];
    
    NSAttributedString *title = [[NSAttributedString alloc] initWithString:@"Speech" attributes:self.titleAttributes];
    
//    UIFont *font = [UIFont fontWithName:@"DamascusBold" size:48.0f];
//    NSRange rangeOfTitle = NSMakeRange(0, [title.string length]);
    
//    [title addAttribute:NSFontAttributeName value:font range:rangeOfTitle];
//    [title addAttribute:NSStrokeWidthAttributeName value:@2.0f range:rangeOfTitle];
    
//    NSShadow *shadow = [NSShadow new];
//    shadow.shadowBlurRadius = 2.0f;
//    shadow.shadowColor = [UIColor grayColor];
//    shadow.shadowOffset = CGSizeMake(1, 1);
//    
//    [title addAttributes:@{
//                           NSStrokeWidthAttributeName  : @2.0f,
//                           NSFontAttributeName         : font,
//                           NSStrokeColorAttributeName  : [UIColor redColor],
//                           NSShadowAttributeName       : shadow
//                           }
//                   range:rangeOfTitle];

    self.label.attributedText = title;

    
    NSAttributedString *paragraph  = [[NSAttributedString alloc] initWithString:self.textView.text attributes:[self paragraphAttributes]];
    
    
    
    self.textView.attributedText = paragraph;
}

- (NSDictionary *)paragraphAttributes
{
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    paragraphStyle.firstLineHeadIndent = 10.0f;
    paragraphStyle.lineSpacing = 10.0f;
    paragraphStyle.paragraphSpacing = 10.0f;
    
    return @{NSParagraphStyleAttributeName  :   paragraphStyle};
}

- (NSDictionary *)titleAttributes
{
    if (_titleAttributes == nil) {
        UIFont *font = [UIFont fontWithName:@"DamascusBold" size:48.0f];

        NSShadow *shadow = [NSShadow new];
        shadow.shadowBlurRadius = 2.0f;
        shadow.shadowColor = [UIColor grayColor];
        shadow.shadowOffset = CGSizeMake(1, 1);
        
        _titleAttributes = @{
                             NSStrokeWidthAttributeName  : @2.0f,
                             NSFontAttributeName         : font,
                             NSStrokeColorAttributeName  : [UIColor redColor],
                             NSShadowAttributeName       : shadow
                             };
    }
    
    return _titleAttributes;
}


@end














