//
//  DetailViewController.h
//  Deutsch4Kid
//
//  Created by Zeljko Bilbija on 20/05/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSString *detailItem;
@property (strong, nonatomic) NSMutableArray *spisakItem;
@property (strong, nonatomic) NSMutableArray *spisakAudioTonova;
@property (strong, nonatomic) NSMutableArray *spisakTekstova;


@property (strong, nonatomic) IBOutlet UILabel *deutschTextLabel;
@property (strong, nonatomic)   NSString *deutschLabelNaslov;

@property ( strong, nonatomic) NSMutableArray *muta;
@property ( strong, nonatomic) NSMutableArray *mutaDva;

//@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UIButton *cekic;
@property (strong, nonatomic) IBOutlet UIButton *busilica;
@property (strong, nonatomic) IBOutlet UIButton *alat;
@property (strong, nonatomic) IBOutlet UIButton *tri;
@property (strong, nonatomic) IBOutlet UIButton *cetiri;
@property (strong, nonatomic) IBOutlet UIButton *pet;
@property (strong, nonatomic) IBOutlet UIButton *sest;
@property (strong, nonatomic) IBOutlet UIButton *sedam;
@property (strong, nonatomic) IBOutlet UIButton *osam;
@property (strong, nonatomic) IBOutlet UIButton *devet;
@property (strong, nonatomic) IBOutlet UIButton *deset;
@property (strong, nonatomic) IBOutlet UIButton *jedanaest;
@property (strong, nonatomic) IBOutlet UIButton *dvanaest;
@property (strong, nonatomic) IBOutlet UIButton *trinaest;
@property (strong, nonatomic) IBOutlet UIButton *cetrnaest;
@property (strong, nonatomic) IBOutlet UIButton *petnaest;
@property (strong, nonatomic) IBOutlet UIButton *sesnaest;
@property (strong, nonatomic) IBOutlet UIButton *sedamnaest;
@property (strong, nonatomic) IBOutlet UIButton *osamnaest;
@property (strong, nonatomic) IBOutlet UIButton *devetnaest;
@property (strong, nonatomic) IBOutlet UIButton *dvadeset;
@property (strong, nonatomic) IBOutlet UIButton *dvadesetjedan;
@property (strong, nonatomic) IBOutlet UIButton *dvadesetdva;
@property (strong, nonatomic) IBOutlet UIButton *dvadesettri;
@property (nonatomic, strong) NSString *soundString;

@property(strong, nonatomic) NSURL  *aSound;
@property (readwrite)	CFURLRef		soundFileURLRef;
@property (readonly)	SystemSoundID	soundFileObject;




@property(strong, nonatomic)  NSArray *tasteri;

- (IBAction)klikni:(UIButton *)sender;


@end

