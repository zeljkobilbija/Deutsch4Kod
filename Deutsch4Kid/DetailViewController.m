//
//  DetailViewController.m
//  Deutsch4Kid
//
//  Created by Zeljko Bilbija on 20/05/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    
    
    
    if (self.spisakItem && self.spisakAudioTonova) {

        _tasteri = [NSArray arrayWithObjects:self.cekic,self.busilica,self.alat,self.tri, self.cetiri, self.pet, self.sest, self.sedam, self.osam, self.devet, self.deset, self.jedanaest, self.dvanaest, self.trinaest, self.cetrnaest, self.petnaest, self.sesnaest, self.sedamnaest, self.osamnaest, self.devetnaest, self.dvadeset, self.dvadesetjedan, self.dvadesetdva, self.dvadesettri, nil];
        


        for (int i = 0; i < [self.tasteri count]; i++) {
            
            [[self.tasteri objectAtIndex:i] setImage:[UIImage imageNamed:[self.spisakItem objectAtIndex:i]] forState:UIControlStateNormal];
            
           
       
            
        }
    


        
        
        
        
        
        
        
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.muta = [NSMutableArray arrayWithCapacity:50];
//    
//    
//    for (int i = 0; i < [self.spisakAudioTonova count]; i++) {
//        
//        NSString *str = [NSString stringWithFormat:@"%@", [self.spisakAudioTonova objectAtIndex:i]];
//        self.aSound   = [[NSBundle mainBundle] URLForResource: str
//                                                withExtension: @"m4a"];
//       
//        
//        
//        [self.muta addObject:self.aSound];
//        
//    }
//    
//    
//    for (int i = 0; i < [self.muta count]; i++) {
//        
//        self.soundFileURLRef = (__bridge CFURLRef) [self.muta objectAtIndex:i];
//        
//        AudioServicesCreateSystemSoundID(
//                                         self.soundFileURLRef,
//                                         &_soundFileObject
//                                         );
//
//        
//        self.soundFileURLRef = (__bridge CFURLRef) [self.muta objectAtIndex:i];
//       
//        
//    }
    
    
    
    
    
    
    
    
//    self.aSound   = [[NSBundle mainBundle] URLForResource: @"bip"
//                                              withExtension: @"m4a"];
    
    //self.soundFileURLRef = (__bridge CFURLRef) self.aSound;
//    AudioServicesCreateSystemSoundID(
//                                     self.soundFileURLRef,
//                                     &_soundFileObject
//                                     );
    //self.soundFileURLRef = (__bridge CFURLRef) self.aSound;

    
    
    
    
    
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(NSString *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        [self.cekic setImage:[self.spisakItem objectAtIndex:0] forState:UIControlStateNormal];

        // Update the view.
        [self configureView];
    }
}


- (IBAction)klikni:(UIButton *)sender {
    
    
    NSString *str = [NSString stringWithString:[self.spisakAudioTonova objectAtIndex: sender.tag ]];
    self.aSound   = [[NSBundle mainBundle] URLForResource: str
                                            withExtension: @"m4a"];
    
    self.soundFileURLRef = (__bridge CFURLRef) self.aSound;
    
    AudioServicesCreateSystemSoundID(
                                    self.soundFileURLRef,
                                    &_soundFileObject
                                    );

    //self.soundFileURLRef = (__bridge CFURLRef) self.aSound;

    
        AudioServicesPlaySystemSound (_soundFileObject);

        NSLog(@"%@",self.soundFileURLRef);
   
    
    
    
}

@end
