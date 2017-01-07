#import <AVFoundation/AVFoundation.h>
#import "Volume.h"

@implementation Volume

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getSystemVolume:(RCTResponseSenderBlock)callback) {
  AVAudioSession *session = [AVAudioSession sharedInstance];
  callback(@[[NSNull null], @([session outputVolume])]);
}

@end
