#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface BleCacheReset : NSObject <RCTBridgeModule, CBCentralManagerDelegate>

@property (nonatomic, strong) CBCentralManager *centralManager;

@end
