import 'dart:convert';

class GetAttachmentModel {
  String? name;
  String? fileName;
  String? fileUrl;
  String? attachedToName;
  String? attachedToDoctype;
  String? folder;
  int? fileSize;
  GetAttachmentModel({
    this.name,
    this.fileName,
    this.fileUrl,
    this.attachedToName,
    this.attachedToDoctype,
    this.folder,
    this.fileSize,
  });

  GetAttachmentModel copyWith({
    String? name,
    String? fileName,
    String? fileUrl,
    String? attachedToName,
    String? attachedToDoctype,
    String? folder,
    int? fileSize,
  }) {
    return GetAttachmentModel(
      name: name ?? this.name,
      fileName: fileName ?? this.fileName,
      fileUrl: fileUrl ?? this.fileUrl,
      attachedToName: attachedToName ?? this.attachedToName,
      attachedToDoctype: attachedToDoctype ?? this.attachedToDoctype,
      folder: folder ?? this.folder,
      fileSize: fileSize ?? this.fileSize,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'file_name': fileName,
      'file_url': fileUrl,
      'attached_to_name': attachedToName,
      'attached_to_doctype': attachedToDoctype,
      'folder': folder,
      'file_size': fileSize,
    };
  }

  factory GetAttachmentModel.fromMap(Map<String, dynamic> map) {
    return GetAttachmentModel(
      name: map['name'] != null ? map['name'] as String : null,
      fileName: map['file_name'] != null ? map['file_name'] as String : null,
      fileUrl: map['file_url'] != null ? map['file_url'] as String : null,
      attachedToName: map['attached_to_name'] != null ? map['attached_to_name'] as String : null,
      attachedToDoctype:
          map['attached_to_doctype'] != null ? map['attached_to_doctype'] as String : null,
      folder: map['folder'] != null ? map['folder'] as String : null,
      fileSize: map['file_size'] != null ? map['file_size'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory GetAttachmentModel.fromJson(Map<String, dynamic> source) =>
      GetAttachmentModel.fromMap(source);

  @override
  String toString() {
    return 'GetAttachmentModel(name: $name, fileName: $fileName, fileUrl: $fileUrl, attachedToName: $attachedToName, attachedToDoctype: $attachedToDoctype, folder: $folder, fileSize: $fileSize)';
  }

  @override
  bool operator ==(covariant GetAttachmentModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.fileName == fileName &&
        other.fileUrl == fileUrl &&
        other.attachedToName == attachedToName &&
        other.attachedToDoctype == attachedToDoctype &&
        other.folder == folder &&
        other.fileSize == fileSize;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        fileName.hashCode ^
        fileUrl.hashCode ^
        attachedToName.hashCode ^
        attachedToDoctype.hashCode ^
        folder.hashCode ^
        fileSize.hashCode;
  }
}
