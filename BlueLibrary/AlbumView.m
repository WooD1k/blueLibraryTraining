//
//  AlbumView.m
//  BlueLibrary
//
//  Created by Alexey Chulochnikov on 19.09.14.
//  Copyright (c) 2014 Eli Ganem. All rights reserved.
//

#import "AlbumView.h"

@implementation AlbumView
{
	UIImageView * coverImage;
	UIActivityIndicatorView * indicator;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
		 albumCover:(NSString *)albumCover
{
	self = [super initWithFrame:frame];
	if (self)
	{
		// Устанавливаем чёрный фон:
		self.backgroundColor = [UIColor blackColor];
		
		// Создаём изображение с небольшим отступом - 5 пикселей от края:
		coverImage = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, frame.size.width-10, frame.size.height-10)];
		[self addSubview:coverImage];
		
		// Добавляем индикатор активности:
		indicator = [[UIActivityIndicatorView alloc] init];
		indicator.center = self.center;
		indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
		[indicator startAnimating];
		[self addSubview:indicator];
	}
	return self;
}

@end
