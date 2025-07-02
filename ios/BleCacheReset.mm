#import "BleCacheReset.h"

@implementation BleCacheReset

RCT_EXPORT_MODULE();

- (instancetype)init {
  self = [super init];
  if (self) {
    _centralManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
  }
  return self;
}

RCT_EXPORT_METHOD(refreshGatt:(NSString *)deviceId
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
  NSLog(@"[refreshGatt] Starting BLE reset for device: %@", deviceId);

  // Reset current CBCentralManager
  self.centralManager.delegate = nil;
  self.centralManager = nil;

  // Recreate CBCentralManager (this will reset the GATT cache internally)
  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    self.centralManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];

    NSLog(@"[refreshGatt] CBCentralManager reinitialized");
    resolve(nil);
  });
}


RCT_EXPORT_METHOD(ping:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
  NSLog(@"Ping received from JS");
  resolve(@"pong");
}

- (void)centralManagerDidUpdateState:(CBCentralManager *)central {
  // Handle state updates if needed
}

@end
