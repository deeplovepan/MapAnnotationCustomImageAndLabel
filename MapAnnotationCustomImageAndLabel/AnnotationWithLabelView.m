//
//  AnnotationWithLabelView.m
//  Locomote
//
//  Created by Pan Peter on 12/11/23.
//
//

#import "AnnotationWithLabelView.h"

@implementation AnnotationWithLabelView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if(self)
    {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, -20, 100, 20)];
        [self addSubview:label];
        self.titleLabel = label;

        label.backgroundColor = [UIColor blackColor];
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:12];
        label.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
