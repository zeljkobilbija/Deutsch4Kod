//
//  DetailViewController.h
//  Deutsch4Kid
//
//  Created by Zeljko Bilbija on 20/05/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

