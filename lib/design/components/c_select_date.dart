part of "ess_components.dart";

class CSelectDateTime extends StatefulWidget {
  final bool pickTime;
  final String? hintText;
  final String? labelText;
  final DateTime? lastDate;
  final DateTime? firstDate;
  final VoidCallback? onClear;
  final DateTime? selectedDate;
  final void Function(DateTime)? onDateChanged;

  const CSelectDateTime({
    super.key,
    this.onClear,
    this.hintText,
    this.labelText,
    this.selectedDate,
    this.onDateChanged,
    this.lastDate,
    this.firstDate,
    this.pickTime = false,
  });

  @override
  State<CSelectDateTime> createState() => _CSelectDateTimeState();
}

class _CSelectDateTimeState extends State<CSelectDateTime> {
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    final Widget? effectiveSuffixIcon;

    if (widget.onClear != null && widget.selectedDate != null) {
      effectiveSuffixIcon = IconButton(
        onPressed: widget.onClear,
        icon: SvgPicture.asset(
          AppIcons.circleCross,
          colorFilter: ColorFilter.mode(
            context.colorScheme.error,
            BlendMode.srcIn,
          ),
        ),
      );
    } else {
      effectiveSuffixIcon = null;
    }

    return CTextField(
      maxLines: 1,
      readOnly: true,
      hintText: widget.hintText,
      prefixIcon: AppIcons.calendar2,
      suffixIcon: effectiveSuffixIcon,
      validator: AppValidator.emptyNullValidator,
      controller: TextEditingController(
        text: widget.pickTime == true && widget.selectedDate != null
            ? widget.selectedDate?.getDefaultDateTimeFormat
            : widget.selectedDate?.getDefaultDateFormat,
      ),
      labelText: widget.labelText ?? TranslationController.td.select,
      onTap: () async {
        final DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: widget.selectedDate ?? DateTime.now(),
          lastDate: widget.lastDate ?? DateTime.now().add(const Duration(days: 3000)),
          firstDate: widget.firstDate ?? DateTime.now().subtract(const Duration(days: 3000)),
        );

        if (selectedDate == null) return;

        setState(() {
          this.selectedDate = selectedDate;
        });

        if (this.selectedDate == null) return;

        if (widget.pickTime == false) {
          widget.onDateChanged?.call(selectedDate);
          return;
        }

        final TimeOfDay? selectedTime = await showTimePicker(
          // ignore: use_build_context_synchronously
          context: context,
          initialTime: TimeOfDay.now(),
        );

        if (selectedTime == null) return;

        setState(() {
          this.selectedDate = DateTime(
            selectedDate.year,
            selectedDate.month,
            selectedDate.day,
            selectedTime.hour,
            selectedTime.minute,
          );
        });

        if (this.selectedDate == null) return;

        widget.onDateChanged?.call(this.selectedDate!);
      },
    );
  }
}

// ignore: must_be_immutable
class CSelectRangeDate extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final DateTime? lastDate;
  final DateTime? firstDate;
  DateTimeRange? selectedDateRange;
  void Function(DateTimeRange)? onDateRangeChanged;

  CSelectRangeDate({
    super.key,
    this.lastDate,
    this.firstDate,
    this.selectedDateRange,
    this.labelText,
    this.hintText,
    this.onDateRangeChanged,
  });

  @override
  State<CSelectRangeDate> createState() => _CSelectRangeDateState();
}

class _CSelectRangeDateState extends State<CSelectRangeDate> {
  @override
  Widget build(BuildContext context) {
    return CTextField(
      maxLines: 1,
      readOnly: true,
      hintText: widget.hintText,
      validator: AppValidator.emptyNullValidator,
      prefixIcon: AppIcons.calendar2,
      controller: TextEditingController(
        text: isNullEmptyOrFalse(widget.selectedDateRange?.start) ||
                isNullEmptyOrFalse(widget.selectedDateRange?.end)
            ? ""
            : "${widget.selectedDateRange?.start.getDefaultDateFormat} to ${widget.selectedDateRange?.end.getDefaultDateFormat}",
      ),
      labelText: widget.labelText ?? TranslationController.td.select,
      onTap: () async {
        final DateTimeRange? selectedDateRange = await showDateRangePicker(
          context: context,
          lastDate: widget.lastDate ?? DateTime.now().add(const Duration(days: 3000)),
          firstDate: widget.firstDate ?? DateTime.now().subtract(const Duration(days: 3000)),
          initialDateRange: widget.selectedDateRange,
        );
        if (selectedDateRange != null) {
          setState(() {
            widget.selectedDateRange = selectedDateRange;
            if (widget.onDateRangeChanged != null) {
              widget.onDateRangeChanged!(selectedDateRange);
            }
          });
        }
      },
    );
  }
}
