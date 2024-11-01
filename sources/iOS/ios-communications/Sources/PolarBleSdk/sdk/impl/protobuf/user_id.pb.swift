// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: user_id.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// USERID.BPB=PbUserIdentifier

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Data_PbUserIdentifier: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// User's master identifier. Might not have been set for 
  /// User (before first synchronization).
  var masterIdentifier: UInt64 {
    get {return _masterIdentifier ?? 0}
    set {_masterIdentifier = newValue}
  }
  /// Returns true if `masterIdentifier` has been explicitly set.
  var hasMasterIdentifier: Bool {return self._masterIdentifier != nil}
  /// Clears the value of `masterIdentifier`. Subsequent reads from it will return its default value.
  mutating func clearMasterIdentifier() {self._masterIdentifier = nil}

  var userIDLastModified: PbSystemDateTime {
    get {return _userIDLastModified ?? PbSystemDateTime()}
    set {_userIDLastModified = newValue}
  }
  /// Returns true if `userIDLastModified` has been explicitly set.
  var hasUserIDLastModified: Bool {return self._userIDLastModified != nil}
  /// Clears the value of `userIDLastModified`. Subsequent reads from it will return its default value.
  mutating func clearUserIDLastModified() {self._userIDLastModified = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _masterIdentifier: UInt64? = nil
  fileprivate var _userIDLastModified: PbSystemDateTime? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "data"

extension Data_PbUserIdentifier: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PbUserIdentifier"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "master_identifier"),
    100: .standard(proto: "user_id_last_modified"),
  ]

  public var isInitialized: Bool {
    if let v = self._userIDLastModified, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self._masterIdentifier) }()
      case 100: try { try decoder.decodeSingularMessageField(value: &self._userIDLastModified) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._masterIdentifier {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._userIDLastModified {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 100)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Data_PbUserIdentifier, rhs: Data_PbUserIdentifier) -> Bool {
    if lhs._masterIdentifier != rhs._masterIdentifier {return false}
    if lhs._userIDLastModified != rhs._userIDLastModified {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
