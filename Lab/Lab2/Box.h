//
//  Box.h
//  Lab2
//
//  Created by 鈴木ちほり on 2021/02/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

@property (assign) float height;
@property (assign) float width;
@property (assign) float lengh;

- (instancetype)initHeight:(float) height initWidth:(float) width initLenght:(float) lengh;
- (float)calculateVolume;
- (float)calculateScale;

@end

NS_ASSUME_NONNULL_END
