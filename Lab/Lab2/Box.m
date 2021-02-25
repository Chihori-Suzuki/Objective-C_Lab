//
//  Box.m
//  Lab2
//
//  Created by 鈴木ちほり on 2021/02/23.
//

#import "Box.h"

@implementation Box


- (instancetype)initHeight:(float) height initWidth:(float) width initLenght:(float) lengh
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _lengh = lengh;
    }
    return self;
}


- (float)calculateVolume
{
    return _height * _width * _lengh;
}

- (float)calculateScale:(Box*) box
{
    return self.calculateVolume / box.calculateVolume;
}



@end
