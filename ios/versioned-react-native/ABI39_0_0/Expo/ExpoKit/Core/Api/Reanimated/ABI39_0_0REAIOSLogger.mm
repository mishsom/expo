#include "ABI39_0_0REAIOSLogger.h"
#include "ABI39_0_0Logger.h"
#import <Foundation/Foundation.h>

namespace ABI39_0_0reanimated {

std::unique_ptr<LoggerInterface> Logger::instance = std::unique_ptr<ABI39_0_0REAIOSLogger>(new ABI39_0_0REAIOSLogger());

void ABI39_0_0REAIOSLogger::log(const char* str) {
  NSLog(@"%@", [NSString stringWithCString:str encoding:[NSString defaultCStringEncoding]]);
}

void ABI39_0_0REAIOSLogger::log(double d) {
  NSLog(@"%lf", d);
}

void ABI39_0_0REAIOSLogger::log(int i) {
   NSLog(@"%i", i);
}

void ABI39_0_0REAIOSLogger::log(bool b) {
  const char* str = (b)? "true" : "false";
  NSLog(@"%@", [NSString stringWithCString:str encoding:[NSString defaultCStringEncoding]]);
}

}
