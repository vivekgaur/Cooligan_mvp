/*
 * Copyright 2018 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: firestore/local/mutation.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/Timestamp.pbobjc.h>
#else
 #import "Timestamp.pbobjc.h"
#endif

 #import "Mutation.pbobjc.h"
 #import "Write.pbobjc.h"
 #import "Annotations.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - FSTPBMutationRoot

@implementation FSTPBMutationRoot


@end

#pragma mark - FSTPBMutationRoot_FileDescriptor

static GPBFileDescriptor *FSTPBMutationRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"firestore.client"
                                                 objcPrefix:@"FSTPB"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - FSTPBMutationQueue

@implementation FSTPBMutationQueue

@dynamic lastAcknowledgedBatchId;
@dynamic lastStreamToken;

typedef struct FSTPBMutationQueue__storage_ {
  uint32_t _has_storage_[1];
  int32_t lastAcknowledgedBatchId;
  NSData *lastStreamToken;
} FSTPBMutationQueue__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "lastAcknowledgedBatchId",
        .dataTypeSpecific.className = NULL,
        .number = FSTPBMutationQueue_FieldNumber_LastAcknowledgedBatchId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(FSTPBMutationQueue__storage_, lastAcknowledgedBatchId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "lastStreamToken",
        .dataTypeSpecific.className = NULL,
        .number = FSTPBMutationQueue_FieldNumber_LastStreamToken,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(FSTPBMutationQueue__storage_, lastStreamToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[FSTPBMutationQueue class]
                                     rootClass:[FSTPBMutationRoot class]
                                          file:FSTPBMutationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(FSTPBMutationQueue__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - FSTPBWriteBatch

@implementation FSTPBWriteBatch

@dynamic batchId;
@dynamic writesArray, writesArray_Count;
@dynamic hasLocalWriteTime, localWriteTime;
@dynamic baseWritesArray, baseWritesArray_Count;

typedef struct FSTPBWriteBatch__storage_ {
  uint32_t _has_storage_[1];
  int32_t batchId;
  NSMutableArray *writesArray;
  GPBTimestamp *localWriteTime;
  NSMutableArray *baseWritesArray;
} FSTPBWriteBatch__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "batchId",
        .dataTypeSpecific.className = NULL,
        .number = FSTPBWriteBatch_FieldNumber_BatchId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(FSTPBWriteBatch__storage_, batchId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "writesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSWrite),
        .number = FSTPBWriteBatch_FieldNumber_WritesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(FSTPBWriteBatch__storage_, writesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "localWriteTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = FSTPBWriteBatch_FieldNumber_LocalWriteTime,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(FSTPBWriteBatch__storage_, localWriteTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "baseWritesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSWrite),
        .number = FSTPBWriteBatch_FieldNumber_BaseWritesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(FSTPBWriteBatch__storage_, baseWritesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[FSTPBWriteBatch class]
                                     rootClass:[FSTPBMutationRoot class]
                                          file:FSTPBMutationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(FSTPBWriteBatch__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
