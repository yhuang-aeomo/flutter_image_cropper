// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
// Copyright note: this code file is copied from `image_picker` plugin

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart' show immutable;

/// The interface for a CroppedFile.
///
/// A CroppedFile is a container that wraps the path of a selected
/// file by the user and (in some platforms, like web) the bytes
/// with the contents of the file.
///
/// This class is a very limited subset of dart:io [File], so all
/// the methods should seem familiar.
@immutable
abstract class CroppedFileBase {
  /// Construct a CroppedFile
  // ignore: avoid_unused_constructor_parameters
  const CroppedFileBase(this.path, {this.extraAct = false});

  /// The path of the picked file.
  final String path;

  /// Additional action flag
  final bool extraAct;

  /// Synchronously read the entire file contents as a string using the given [Encoding].
  ///
  /// By default, `encoding` is [utf8].
  ///
  /// Throws Exception if the operation fails.
  Future<String> readAsString({Encoding encoding = utf8}) {
    throw UnimplementedError('readAsString() has not been implemented.');
  }

  /// Synchronously read the entire file contents as a list of bytes.
  ///
  /// Throws Exception if the operation fails.
  Future<Uint8List> readAsBytes() {
    throw UnimplementedError('readAsBytes() has not been implemented.');
  }

  /// Create a new independent [Stream] for the contents of this file.
  ///
  /// If `start` is present, the file will be read from byte-offset `start`. Otherwise from the beginning (index 0).
  ///
  /// If `end` is present, only up to byte-index `end` will be read. Otherwise, until end of file.
  ///
  /// In order to make sure that system resources are freed, the stream must be read to completion or the subscription on the stream must be cancelled.
  Stream<Uint8List> openRead([int? start, int? end]) {
    throw UnimplementedError('openRead() has not been implemented.');
  }
}
