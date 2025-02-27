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
// source: google/firestore/v1/document.proto

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
#import <protobuf/Struct.pbobjc.h>
#import <protobuf/Timestamp.pbobjc.h>
#else
 #import "Struct.pbobjc.h"
 #import "Timestamp.pbobjc.h"
#endif

 #import "Document.pbobjc.h"
 #import "Annotations.pbobjc.h"
 #import "Latlng.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - GCFSDocumentRoot

@implementation GCFSDocumentRoot


@end

#pragma mark - GCFSDocumentRoot_FileDescriptor

static GPBFileDescriptor *GCFSDocumentRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.firestore.v1"
                                                 objcPrefix:@"GCFS"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GCFSDocument

@implementation GCFSDocument

@dynamic name;
@dynamic fields, fields_Count;
@dynamic hasCreateTime, createTime;
@dynamic hasUpdateTime, updateTime;

typedef struct GCFSDocument__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  NSMutableDictionary *fields;
  GPBTimestamp *createTime;
  GPBTimestamp *updateTime;
} GCFSDocument__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GCFSDocument_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GCFSDocument__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "fields",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSValue),
        .number = GCFSDocument_FieldNumber_Fields,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSDocument__storage_, fields),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "createTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = GCFSDocument_FieldNumber_CreateTime,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GCFSDocument__storage_, createTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "updateTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = GCFSDocument_FieldNumber_UpdateTime,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GCFSDocument__storage_, updateTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSDocument class]
                                     rootClass:[GCFSDocumentRoot class]
                                          file:GCFSDocumentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSDocument__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSValue

@implementation GCFSValue

@dynamic valueTypeOneOfCase;
@dynamic nullValue;
@dynamic booleanValue;
@dynamic integerValue;
@dynamic doubleValue;
@dynamic timestampValue;
@dynamic stringValue;
@dynamic bytesValue;
@dynamic referenceValue;
@dynamic geoPointValue;
@dynamic arrayValue;
@dynamic mapValue;

typedef struct GCFSValue__storage_ {
  uint32_t _has_storage_[2];
  GPBNullValue nullValue;
  NSString *referenceValue;
  GCFSMapValue *mapValue;
  GTPLatLng *geoPointValue;
  GCFSArrayValue *arrayValue;
  GPBTimestamp *timestampValue;
  NSString *stringValue;
  NSData *bytesValue;
  int64_t integerValue;
  double doubleValue;
} GCFSValue__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "booleanValue",
        .dataTypeSpecific.className = NULL,
        .number = GCFSValue_FieldNumber_BooleanValue,
        .hasIndex = -1,
        .offset = 0,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "integerValue",
        .dataTypeSpecific.className = NULL,
        .number = GCFSValue_FieldNumber_IntegerValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, integerValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "doubleValue",
        .dataTypeSpecific.className = NULL,
        .number = GCFSValue_FieldNumber_DoubleValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, doubleValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "referenceValue",
        .dataTypeSpecific.className = NULL,
        .number = GCFSValue_FieldNumber_ReferenceValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, referenceValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "mapValue",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSMapValue),
        .number = GCFSValue_FieldNumber_MapValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, mapValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "geoPointValue",
        .dataTypeSpecific.className = GPBStringifySymbol(GTPLatLng),
        .number = GCFSValue_FieldNumber_GeoPointValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, geoPointValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "arrayValue",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSArrayValue),
        .number = GCFSValue_FieldNumber_ArrayValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, arrayValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "timestampValue",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = GCFSValue_FieldNumber_TimestampValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, timestampValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "nullValue",
        .dataTypeSpecific.enumDescFunc = GPBNullValue_EnumDescriptor,
        .number = GCFSValue_FieldNumber_NullValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, nullValue),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "stringValue",
        .dataTypeSpecific.className = NULL,
        .number = GCFSValue_FieldNumber_StringValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, stringValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "bytesValue",
        .dataTypeSpecific.className = NULL,
        .number = GCFSValue_FieldNumber_BytesValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GCFSValue__storage_, bytesValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSValue class]
                                     rootClass:[GCFSDocumentRoot class]
                                          file:GCFSDocumentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSValue__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "valueType",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GCFSValue_NullValue_RawValue(GCFSValue *message) {
  GPBDescriptor *descriptor = [GCFSValue descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GCFSValue_FieldNumber_NullValue];
  return GPBGetMessageInt32Field(message, field);
}

void SetGCFSValue_NullValue_RawValue(GCFSValue *message, int32_t value) {
  GPBDescriptor *descriptor = [GCFSValue descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GCFSValue_FieldNumber_NullValue];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

void GCFSValue_ClearValueTypeOneOfCase(GCFSValue *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - GCFSArrayValue

@implementation GCFSArrayValue

@dynamic valuesArray, valuesArray_Count;

typedef struct GCFSArrayValue__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *valuesArray;
} GCFSArrayValue__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "valuesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSValue),
        .number = GCFSArrayValue_FieldNumber_ValuesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSArrayValue__storage_, valuesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSArrayValue class]
                                     rootClass:[GCFSDocumentRoot class]
                                          file:GCFSDocumentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSArrayValue__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GCFSMapValue

@implementation GCFSMapValue

@dynamic fields, fields_Count;

typedef struct GCFSMapValue__storage_ {
  uint32_t _has_storage_[1];
  NSMutableDictionary *fields;
} GCFSMapValue__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fields",
        .dataTypeSpecific.className = GPBStringifySymbol(GCFSValue),
        .number = GCFSMapValue_FieldNumber_Fields,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GCFSMapValue__storage_, fields),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GCFSMapValue class]
                                     rootClass:[GCFSDocumentRoot class]
                                          file:GCFSDocumentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GCFSMapValue__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
