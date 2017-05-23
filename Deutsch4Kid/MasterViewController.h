//
//  MasterViewController.h
//  Deutsch4Kid
//
//  Created by Zeljko Bilbija on 20/05/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property ( strong, nonatomic) NSArray *spisak;
@property(strong, nonatomic) NSMutableArray *spisakAlata;
@property(strong, nonatomic) NSMutableArray *spisakVoca;
@property(strong, nonatomic) NSMutableArray *spisakRazno;
@property(strong, nonatomic) NSMutableArray *spisakZivotinja;
@property(strong, nonatomic) NSMutableArray *spisakBrojeva;
@property(strong, nonatomic) NSMutableArray *audioAlati;
@property(strong, nonatomic) NSMutableArray *audioVoce;
@property(strong, nonatomic) NSMutableArray *audioRazno;
@property(strong, nonatomic) NSMutableArray *audioZivotinje;
@property(strong, nonatomic) NSMutableArray *audioBrojevi;
@property(strong, nonatomic) NSMutableArray *tekstAlati;
@property(strong, nonatomic) NSMutableArray *tekstVoce;
@property(strong, nonatomic) NSMutableArray *tekstRazno;
@property(strong, nonatomic) NSMutableArray *tekstZivotinje;
@property(strong, nonatomic) NSMutableArray *tekstBrojevi;


@property (readwrite)	CFURLRef		soundFileURLRef;
@property (readonly)	SystemSoundID	soundFileObject;

@end

