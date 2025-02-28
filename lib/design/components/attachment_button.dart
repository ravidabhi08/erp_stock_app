part of 'ess_components.dart';

// class AttachmentButton extends StatefulWidget {
//   final List<PlatformFile> initialPickedFiles;
//   final Function(List<PlatformFile> files)? onFilesUpdated;
//   const AttachmentButton({super.key, this.onFilesUpdated, this.initialPickedFiles = const []});

//   @override
//   State<AttachmentButton> createState() => _AttachmentButtonState();
// }

// class _AttachmentButtonState extends State<AttachmentButton> {
//   RxBool isFileUploading = false.obs;
//   RxList<PlatformFile> pickedFiles = <PlatformFile>[].obs;
//   final HomeRepository _homeRepository = Get.find<HomeRepository>();

//   @override
//   void initState() {
//     super.initState();
//     pickedFiles.addAll(widget.initialPickedFiles);
//   }

//   Future<void> selecteFile() async {
//     isFileUploading.value = true;
//     FilePickerResult? filePickerResult = await _homeRepository.pickFiles(
//       allowMultiple: true,
//       fileType: FileType.custom,
//       allowedExtensions: ['pdf', 'doc', 'docx', 'jpg', 'jpeg', 'png', 'xls'],
//     );
//     if (filePickerResult != null && widget.onFilesUpdated != null) {
//       // pickedFiles.addAll(filePickerResult.files);
//       // pickedFiles.value = pickedFiles.toSet().toList();
//       widget.onFilesUpdated!(filePickerResult.files);
//     }
//     isFileUploading.value = false;
//   }

//   void removeFile(PlatformFile file) {
//     pickedFiles.remove(file);
//     if (widget.onFilesUpdated != null) {
//       widget.onFilesUpdated!(pickedFiles);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Obx(
//           () => AppButton(
//             width: double.infinity,
//             onPressed: selecteFile,
//             isLoading: isFileUploading.value,
//             // TODO(v2): color
//             labelColor: context.appColors.iconColor,
//             label: TranslationController.td.attachments,
//             backgroundColor: context.colorScheme.background,
//             leading: Padding(
//               padding: const EdgeInsetsDirectional.only(end: 8),
//               child: SvgPicture.asset(
//                 AppIcons.arrowUp,
//                 colorFilter: ColorFilter.mode(
//                   context.appColors.iconColor,
//                   BlendMode.srcIn,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Obx(
//           () => Column(
//             children: pickedFiles
//                 .map(
//                   (file) => Container(
//                     margin: const EdgeInsets.only(bottom: 5),
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       border: Border.all(color: context.colorScheme.onBackground),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Expanded(
//                           child: CText(
//                             file.name,
//                             style: TextThemeX().text16.copyWith(),
//                           ),
//                         ),
//                         // const SizedBox(width: 10),
//                         // selectIcon(
//                         //   AppIcons.circleCross,
//                         //   onPressed: () => removeFile(file),
//                         // ),
//                       ],
//                     ),
//                   ),
//                 )
//                 .toList(),
//           ),
//         ),
//       ],
//     );
//   }
// }
