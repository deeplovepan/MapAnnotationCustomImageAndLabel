//
//  ViewController.m
//  TestAnno
//
//  Created by Peter Pan on 10/7/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"
#import "MyMapAnnotation.h"
#import "AnnotationWithLabelView.h"

@import MapKit.MKMapView;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(25.033408, 121.564099);
    
    self.mapView.centerCoordinate = coordinate;
    
    
    MyMapAnnotation *annotation = [[MyMapAnnotation alloc] initWithCoordinate:coordinate title:@"台北101" subtitle:@"信義誠品隔壁" ];
    [self.mapView addAnnotation:annotation];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - map delegate

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    NSString *pinId = @"pin";
    
    
    AnnotationWithLabelView *annView = (AnnotationWithLabelView *) [mapView
                                                                    dequeueReusableAnnotationViewWithIdentifier:pinId];
    if(annView == nil)
    {
        annView=[[AnnotationWithLabelView alloc]
                 initWithAnnotation:annotation reuseIdentifier:pinId];
    }
    
    
    
    MyMapAnnotation *mapAnnotation = annotation;
    
    UIImage *pinImage = [UIImage imageNamed:@"test.jpg"];
    annView.image = pinImage;
    annView.titleLabel.text = mapAnnotation.title ;
    annView.centerOffset = CGPointMake(-5, 0);
    
    
    return annView;
    
    
}



@end
