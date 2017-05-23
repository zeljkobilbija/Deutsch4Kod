//
//  MasterViewController.m
//  Deutsch4Kid
//
//  Created by Zeljko Bilbija on 20/05/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _spisak = [NSArray arrayWithObjects:NSLocalizedString(@"TOOLS", @"ALAT ---"),NSLocalizedString(@"FRUIT AND VEGETABLES", @"FRUIT AND VEGETABLES----"),NSLocalizedString(@"ANIMALS", @"ANIMALS ----"),NSLocalizedString(@"OTHER", @"OTHER----"), NSLocalizedString(@"NUMBERS", @"NUMBERS----"),nil];
    
    // spisakAlata je kompletiran 24 elementa od 0 do 23
    _spisakAlata = [NSMutableArray arrayWithObjects:@"alat.png",@"busilica.png",@"cekic.png",@"cetka.png",@"cetkica.png",@"ekser.png",@"hanzaplast.png",@"katanac.png",@"kisobran.png",@"lampa.png",@"lopata.png",@"lupa.png",@"mac.png",@"makaze.png",@"merdevine.png",@"metar.png",@"motorna-testera.png",@"noz.png",@"sekira.png",@"sraf.png",@"srafciger.png",@"testera.png",@"tiganj.png",@"viljuska.png", nil];
    _audioAlati = [NSMutableArray arrayWithObjects:@"alat",@"busilica",@"cekic",@"cetka",@"cetkica",@"ekser",@"hanzaplast",@"katanac",@"kisobran",@"lampa",@"lopata",@"lupa",@"mac",@"makaze",@"merdevine",@"metar",@"motorna-testera",@"noz",@"sekira",@"sraf",@"srafciger",@"testera",@"tiganj",@"viljuska", nil];
    _tekstAlati = [NSMutableArray arrayWithObjects:@"alat",@"busilica",@"cekic",@"cetka",@"cetkica",@"ekser",@"hanzaplast",@"katanac",@"kisobran",@"lampa",@"lopata",@"lupa",@"mac",@"makaze",@"merdevine",@"metar",@"motorna-testera",@"noz",@"sekira",@"sraf",@"srafciger",@"testera",@"tiganj",@"viljuska", nil];
    
    
    _spisakVoca = [NSMutableArray arrayWithObjects:@"kupus.png",@"krompir.png",@"pecurka.png",@"krastavac.png",@"sargarepa.png",@"crniluk.png",@"beliluk.png",@"povrce.png",@"tresnje.png",@"sljiva.png",@"pomorandza.png",@"paradajz.png",@"paprika.png",@"lubenica.png",@"limun.png",@"kruska.png",@"jagoda.png",@"jabuka.png",@"grozdje.png",@"brokoli.png",@"banana.png",@"ananas.png",@"cvet.png",@"list.png", nil];
    _audioVoce = [NSMutableArray arrayWithObjects:@"kupus",@"krompir",@"pecurka",@"krastavac",@"sargarepa",@"crniluk",@"beliluk",@"povrce",@"tresnje",@"sljiva",@"pomorandza",@"paradajz",@"paprika",@"lubenica",@"limun",@"kruska",@"jagoda",@"jabuka",@"grozdje",@"brokoli",@"banana",@"ananas",@"cvet",@"list", nil];
    _tekstVoce = [NSMutableArray arrayWithObjects:@"kupus",@"krompir",@"pecurka",@"krastavac",@"sargarepa",@"crniluk",@"beliluk",@"povrce",@"tresnje",@"sljiva",@"pomorandza",@"paradajz",@"paprika",@"lubenica",@"limun",@"kruska",@"jagoda",@"jabuka",@"grozdje",@"brokoli",@"banana",@"ananas",@"cvet",@"list", nil];
    
    
    
    _spisakZivotinja = [NSMutableArray arrayWithObjects:@"bizon.png",@"majmun.png",@"slon.png",@"svinja.png",@"kokoska.png",@"krava.png",@"pingvin.png",@"sova.png",@"riba.png",@"mis.png",@"curka.png",@"tigar.png",@"lav.png",@"macka.png",@"pas.png",@"konj.png",@"jelen.png",@"nosorog.png",@"ovca.png",@"zirafa.png",@"ptica.png",@"zmija.png",@"zebra.png",@"delfin.png", nil];
    _audioZivotinje = [NSMutableArray arrayWithObjects:@"bizon",@"majmun",@"slon",@"svinja",@"kokoska",@"krava",@"pingvin",@"sova",@"riba",@"mis",@"curka",@"tigar",@"lav",@"macka",@"pas",@"konj",@"jelen",@"nosorog",@"ovca",@"zirafa",@"ptica",@"zmija",@"zebra",@"delfin", nil];
    
    _tekstZivotinje = [NSMutableArray arrayWithObjects:@"bizon",@"majmun",@"slon",@"svinja",@"kokoska",@"krava",@"pingvin",@"sova",@"riba",@"mis",@"curka",@"tigar",@"lav",@"macka",@"pas",@"konj",@"jelen",@"nosorog",@"ovca",@"zirafa",@"ptica",@"zmija",@"zebra",@"delfin", nil];
    
    
    // _spisakRazno je kompletiran 24 elementa od 0 do 23
    _spisakRazno = [NSMutableArray arrayWithObjects:@"sesir.png",@"sanke.png",@"saka.png",@"rukavice.png",@"ruka.png",@"prst.png",@"papuce.png",@"nos.png",@"maestra.png",@"kuvar.png",@"kapa.png",@"glava.png",@"dotoressa.png",@"dedamraz.png",@"bergschue.png",@"policajac.png",@"snesko.png",@"usne.png",@"serpa.png",@"olovka.png",@"spajalica.png",@"kljuc.png",@"srce.png",@"zubi.png", nil];
    _audioRazno = [NSMutableArray arrayWithObjects:@"sesir",@"sanke",@"saka",@"rukavice",@"ruka",@"prst",@"papuce",@"nos",@"maestra",@"kuvar",@"kapa",@"glava",@"dotoressa",@"dedamraz",@"bergschue",@"policajac",@"snesko",@"usne",@"serpa",@"olovka",@"spajalica",@"kljuc",@"srce",@"zubi", nil];
    _tekstRazno = [NSMutableArray arrayWithObjects:@"sesir",@"sanke",@"saka",@"rukavice",@"ruka",@"prst",@"papuce",@"nos",@"maestra",@"kuvar",@"kapa",@"glava",@"dotoressa",@"dedamraz",@"bergschue",@"policajac",@"snesko",@"usne",@"serpa",@"olovka",@"spajalica",@"kljuc",@"srce",@"zubi", nil];
    
    
    
    _spisakBrojeva = [NSMutableArray arrayWithObjects:@"0.png",@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png",@"9.png",@"10.png",@"11.png",@"12.png",@"13.png",@"14.png",@"15.png",@"16.png",@"17.png",@"18.png",@"19.png",@"20.png",@"30.png",@"40.png",@"50.png",nil];
    
    _audioBrojevi = [NSMutableArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"30",@"40",@"50",nil];
    
    _tekstBrojevi = [NSMutableArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"30",@"40",@"50",nil];
    
    // Do any additional setup after loading the view, typically from a nib.
  
 
    
    for (int i = 0; i <23; i++) {
        
       
        
        NSURL *aSound   = [[NSBundle mainBundle] URLForResource: [NSMutableString stringWithFormat:@"%d",i]
                                                  withExtension: @"m4a"];
        
        self.soundFileURLRef = (__bridge CFURLRef) aSound;
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    NSURL *aSound   = [[NSBundle mainBundle] URLForResource: @"bip"
                                              withExtension: @"m4a"];
    self.soundFileURLRef = (__bridge CFURLRef) aSound;
    
    // Create a system sound object representing the sound file.
    AudioServicesCreateSystemSoundID (
                                      
                                      _soundFileURLRef,
                                      &_soundFileObject
                                      );

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}


- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (void)insertNewObject:(id)sender {
//    if (!self.objects) {
//        self.objects = [[NSMutableArray alloc] init];
//    }
//    [self.objects insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        
        NSString *str = @"bip.m4a";
        
        
        
        
        
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

        NSInteger i = indexPath.row;
      
        
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        
        [controller setSoundString:str];
        
        switch (i) {
            case 0:
                [controller setSpisakItem:self.spisakAlata];
                [controller setSpisakAudioTonova:self.audioAlati];
                [controller setSpisakTekstova:self.tekstAlati];
                [controller setDeutschLabelNaslov: NSLocalizedString(@"TOOLS", @"Tools ----")];
                
                
                
                break;
            case 1:
                [controller setSpisakItem:self.spisakVoca];
                [controller setSpisakAudioTonova:self.audioVoce];
                [controller setSpisakTekstova:self.tekstVoce];
                [controller setDeutschLabelNaslov:NSLocalizedString(@"FRUITS AND VEGETABLES", @"FRUITS AND VEGETABLES ------")];
                
                
                break;
            case 2:
                 [controller setSpisakItem:self.spisakZivotinja];
                [controller setSpisakAudioTonova:self.audioZivotinje];
                [controller setSpisakTekstova:self.tekstZivotinje];
                [controller setDeutschLabelNaslov:NSLocalizedString(@"ANIMALS", @"ANIMALS ----- ")];
                
                
                break;
            case 3:
                [controller setSpisakItem:self.spisakRazno];
                [controller setSpisakAudioTonova:self.audioRazno];
                [controller setSpisakTekstova:self.tekstRazno];
                [controller setDeutschLabelNaslov:NSLocalizedString(@"OTHER", @"OTHER -----")];
                
                
                break;
            case 4:
                [controller setSpisakItem:self.spisakBrojeva];
                [controller setSpisakAudioTonova:self.audioBrojevi];
                [controller setSpisakTekstova:self.tekstBrojevi];
                [controller setDeutschLabelNaslov:NSLocalizedString(@"NUMBERS", @"NUMBERS ----")];
                
                
                
            default:
                
                break;
        }


    }
}


#pragma mark - Table View

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    
//    return 1;
//}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.spisak count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    //NSDate *object = self.objects[indexPath.row];
    cell.textLabel.text = [_spisak objectAtIndex:indexPath.row];
    return cell;
}


//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the specified item to be editable.
//    return NO;
//}


//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        [self.objects removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//    }
//}


@end
