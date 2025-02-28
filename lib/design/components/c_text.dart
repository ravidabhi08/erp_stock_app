part of 'ess_components.dart';

class CText extends Text {
  const CText(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
    super.textScaleFactor = 1,
  }) : super();
}

class CRichText extends RichText {
  CRichText({
    super.key,
    super.textAlign,
    super.textDirection,
    super.textScaleFactor = 1,
    super.maxLines,
    super.overflow,
    super.textWidthBasis,
    super.textHeightBehavior,
    required super.text,
  });
}

typedef StringCallback = void Function(String value);

class ExpandableText extends StatefulWidget {
  const ExpandableText(
    this.text, {
    super.key,
    this.expandText = "see more",
    this.collapseText = "",
    this.expanded = false,
    this.onExpandedChanged,
    this.onLinkTap,
    this.linkColor,
    this.linkEllipsis = true,
    this.linkStyle,
    this.prefixText,
    this.prefixStyle,
    this.onPrefixTap,
    this.urlStyle,
    this.onUrlTap,
    this.hashtagStyle,
    this.onHashtagTap,
    this.mentionStyle,
    this.onMentionTap,
    this.expandOnTextTap = true,
    this.collapseOnTextTap = true,
    this.style,
    this.textDirection,
    this.textAlign,
    this.textScaleFactor = 1,
    this.maxLines = 2,
    this.animation = true,
    this.animationDuration = const Duration(milliseconds: 500),
    this.animationCurve = Curves.decelerate,
    this.semanticsLabel,
  });

  final String text;
  final String expandText;
  final String? collapseText;
  final bool expanded;
  final ValueChanged<bool>? onExpandedChanged;
  final VoidCallback? onLinkTap;
  final Color? linkColor;
  final bool linkEllipsis;
  final TextStyle? linkStyle;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final VoidCallback? onPrefixTap;
  final TextStyle? urlStyle;
  final StringCallback? onUrlTap;
  final TextStyle? hashtagStyle;
  final StringCallback? onHashtagTap;
  final TextStyle? mentionStyle;
  final StringCallback? onMentionTap;
  final bool expandOnTextTap;
  final bool collapseOnTextTap;
  final TextStyle? style;
  final TextDirection? textDirection;
  final TextAlign? textAlign;
  final double? textScaleFactor;
  final int? maxLines;
  final bool animation;
  final Duration? animationDuration;
  final Curve? animationCurve;
  final String? semanticsLabel;

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> with TickerProviderStateMixin {
  bool _expanded = false;
  late TapGestureRecognizer _linkTapGestureRecognizer;
  late TapGestureRecognizer _prefixTapGestureRecognizer;

  List<TextSegment> _textSegments = [];
  final List<TapGestureRecognizer> _textSegmentsTapGestureRecognizers = [];

  @override
  void initState() {
    super.initState();

    _expanded = widget.expanded;
    _linkTapGestureRecognizer = TapGestureRecognizer()..onTap = _linkTapped;
    _prefixTapGestureRecognizer = TapGestureRecognizer()..onTap = _prefixTapped;

    _updateText();
  }

  @override
  void didUpdateWidget(ExpandableText oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.text != widget.text ||
        oldWidget.onUrlTap != widget.onUrlTap ||
        oldWidget.onHashtagTap != widget.onHashtagTap ||
        oldWidget.onMentionTap != widget.onMentionTap) {
      _updateText();
    }
  }

  @override
  void dispose() {
    _linkTapGestureRecognizer.dispose();
    _prefixTapGestureRecognizer.dispose();
    for (var recognizer in _textSegmentsTapGestureRecognizers) {
      recognizer.dispose();
    }
    super.dispose();
  }

  void _linkTapped() {
    if (widget.onLinkTap != null) {
      widget.onLinkTap!();
      return;
    }

    final toggledExpanded = !_expanded;

    setState(() => _expanded = toggledExpanded);

    widget.onExpandedChanged?.call(toggledExpanded);
  }

  void _prefixTapped() {
    widget.onPrefixTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    var effectiveTextStyle =
        widget.style ?? TextThemeX().text14.copyWith(fontWeight: FontWeight.w400);
    if (widget.style == null || widget.style!.inherit) {
      effectiveTextStyle = defaultTextStyle.style.merge(widget.style);
    }

    final linkText = (_expanded ? widget.collapseText : widget.expandText) ?? '';
    final linkColor =
        widget.linkColor ?? widget.linkStyle?.color ?? Theme.of(context).colorScheme.secondary;
    final linkTextStyle = effectiveTextStyle.merge(widget.linkStyle).copyWith(color: linkColor);

    final prefixText =
        widget.prefixText != null && widget.prefixText!.isNotEmpty ? '${widget.prefixText} ' : '';

    final link = TextSpan(
      children: [
        if (!_expanded)
          TextSpan(
            text: '\u2026 ',
            style: widget.linkEllipsis ? linkTextStyle : effectiveTextStyle,
            recognizer: widget.linkEllipsis ? _linkTapGestureRecognizer : null,
          ),
        if (linkText.isNotEmpty)
          TextSpan(
            style: effectiveTextStyle,
            children: <TextSpan>[
              if (_expanded)
                const TextSpan(
                  text: ' ',
                ),
              TextSpan(
                text: linkText,
                style: linkTextStyle,
                recognizer: _linkTapGestureRecognizer,
              ),
            ],
          ),
      ],
    );

    final prefix = TextSpan(
      text: prefixText,
      style: effectiveTextStyle.merge(widget.prefixStyle),
      recognizer: _prefixTapGestureRecognizer,
    );

    final text = _textSegments.isNotEmpty
        ? TextSpan(children: _buildTextSpans(_textSegments, effectiveTextStyle, null))
        : TextSpan(text: widget.text);

    final content = TextSpan(
      children: <TextSpan>[prefix, text],
      style: effectiveTextStyle,
    );

    Widget result = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        assert(constraints.hasBoundedWidth);
        final double maxWidth = constraints.maxWidth;

        final textAlign = widget.textAlign ?? defaultTextStyle.textAlign ?? TextAlign.start;
        final textDirection = widget.textDirection ?? Directionality.of(context);
        final textScaleFactor = widget.textScaleFactor ?? MediaQuery.textScaleFactorOf(context);
        final locale = Localizations.maybeLocaleOf(context);

        TextPainter textPainter = TextPainter(
          text: link,
          textAlign: textAlign,
          textDirection: textDirection,
          textScaleFactor: textScaleFactor,
          maxLines: widget.maxLines,
          locale: locale,
        );
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final linkSize = textPainter.size;

        textPainter.text = content;
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final textSize = textPainter.size;

        TextSpan textSpan;
        if (textPainter.didExceedMaxLines) {
          final position = textPainter.getPositionForOffset(Offset(
            textSize.width - linkSize.width,
            textSize.height,
          ));
          final endOffset = (textPainter.getOffsetBefore(position.offset) ?? 0) - prefixText.length;

          final recognizer = (_expanded ? widget.collapseOnTextTap : widget.expandOnTextTap)
              ? _linkTapGestureRecognizer
              : null;

          final text = _textSegments.isNotEmpty
              ? TextSpan(
                  children: _buildTextSpans(
                      _expanded
                          ? _textSegments
                          : parseText(widget.text.substring(0, math.max(endOffset, 0))),
                      effectiveTextStyle,
                      recognizer),
                )
              : TextSpan(
                  text: _expanded ? widget.text : widget.text.substring(0, math.max(endOffset, 0)),
                  recognizer: recognizer,
                );

          textSpan = TextSpan(
            style: effectiveTextStyle,
            children: <TextSpan>[
              prefix,
              text,
              link,
            ],
          );
        } else {
          textSpan = content;
        }

        final richText = RichText(
          text: textSpan,
          softWrap: true,
          textDirection: textDirection,
          textAlign: textAlign,
          overflow: TextOverflow.clip,
          textScaler: TextScaler.linear(textScaleFactor),
        );

        if (widget.animation) {
          return AnimatedSize(
            duration: widget.animationDuration ?? const Duration(milliseconds: 200),
            reverseDuration: widget.animationDuration ?? const Duration(milliseconds: 200),
            curve: widget.animationCurve ?? Curves.fastLinearToSlowEaseIn,
            alignment: Alignment.topLeft,
            child: richText,
          );
        }

        return richText;
      },
    );

    if (widget.semanticsLabel != null) {
      result = Semantics(
        textDirection: widget.textDirection,
        label: widget.semanticsLabel,
        child: ExcludeSemantics(
          child: result,
        ),
      );
    }

    return result;
  }

  void _updateText() {
    for (var recognizer in _textSegmentsTapGestureRecognizers) {
      recognizer.dispose();
    }
    _textSegmentsTapGestureRecognizers.clear();

    if (widget.onUrlTap == null && widget.onHashtagTap == null && widget.onMentionTap == null) {
      _textSegments.clear();
      return;
    }

    _textSegments = parseText(widget.text);

    for (var element in _textSegments) {
      if (element.isUrl && widget.onUrlTap != null) {
        final recognizer = TapGestureRecognizer()
          ..onTap = () {
            widget.onUrlTap!(element.name!);
          };

        _textSegmentsTapGestureRecognizers.add(recognizer);
      } else if (element.isHashtag && widget.onHashtagTap != null) {
        final recognizer = TapGestureRecognizer()
          ..onTap = () {
            widget.onHashtagTap!(element.name!);
          };

        _textSegmentsTapGestureRecognizers.add(recognizer);
      } else if (element.isMention && widget.onMentionTap != null) {
        final recognizer = TapGestureRecognizer()
          ..onTap = () {
            widget.onMentionTap!(element.name!);
          };

        _textSegmentsTapGestureRecognizers.add(recognizer);
      }
    }
  }

  List<TextSpan> _buildTextSpans(
      List<TextSegment> segments, TextStyle textStyle, TapGestureRecognizer? textTapRecognizer) {
    final spans = <TextSpan>[];

    var index = 0;
    for (var segment in segments) {
      TextStyle? style;
      TapGestureRecognizer? recognizer;

      if (segment.isUrl && widget.onUrlTap != null) {
        style = textStyle.merge(widget.urlStyle);
        recognizer = _textSegmentsTapGestureRecognizers[index++];
      } else if (segment.isMention && widget.onMentionTap != null) {
        style = textStyle.merge(widget.mentionStyle);
        recognizer = _textSegmentsTapGestureRecognizers[index++];
      } else if (segment.isHashtag && widget.onHashtagTap != null) {
        style = textStyle.merge(widget.hashtagStyle);
        recognizer = _textSegmentsTapGestureRecognizers[index++];
      }

      final span = TextSpan(
        text: segment.text,
        style: style,
        recognizer: recognizer ?? textTapRecognizer,
      );

      spans.add(span);
    }

    return spans;
  }
}

class TextSegment {
  String text;

  final String? name;
  final bool isHashtag;
  final bool isMention;
  final bool isUrl;

  bool get isText => !isHashtag && !isMention && !isUrl;

  TextSegment(this.text,
      [this.name, this.isHashtag = false, this.isMention = false, this.isUrl = false]);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextSegment &&
          runtimeType == other.runtimeType &&
          text == other.text &&
          name == other.name &&
          isHashtag == other.isHashtag &&
          isMention == other.isMention &&
          isUrl == other.isUrl;

  @override
  int get hashCode =>
      text.hashCode ^ name.hashCode ^ isHashtag.hashCode ^ isMention.hashCode ^ isUrl.hashCode;
}

/// Split the string into multiple instances of [TextSegment] for mentions, hashtags, URLs and regular text.
///
/// Mentions are all words that start with @, e.g. @mention.
/// Hashtags are all words that start with #, e.g. #hashtag.
List<TextSegment> parseText(String? text) {
  final segments = <TextSegment>[];

  if (text == null || text.isEmpty) {
    return segments;
  }

  // parse urls and words starting with @ (mention) or # (hashtag)
  RegExp exp = RegExp(
      r'(?<keyword>(#|@)([\p{Alphabetic}\p{Mark}\p{Decimal_Number}\p{Connector_Punctuation}\p{Join_Control}]+)|(?<url>(?:(?:https?|ftp):\/\/)?[-a-z0-9@:%._\+~#=]{1,256}\.[a-z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?))',
      unicode: true);
  final matches = exp.allMatches(text);

  var start = 0;
  for (var match in matches) {
    // text before the keyword
    if (match.start > start) {
      if (segments.isNotEmpty && segments.last.isText) {
        segments.last.text += text.substring(start, match.start);
      } else {
        segments.add(TextSegment(text.substring(start, match.start)));
      }
      start = match.start;
    }

    final url = match.namedGroup('url');
    final keyword = match.namedGroup('keyword');

    if (url != null) {
      segments.add(TextSegment(url, url, false, false, true));
    } else if (keyword != null) {
      final isWord =
          match.start == 0 || [' ', '\n'].contains(text.substring(match.start - 1, start));
      if (!isWord) {
        continue;
      }

      final isHashtag = keyword.startsWith('#');
      final isMention = keyword.startsWith('@');

      segments.add(TextSegment(keyword, keyword.substring(1), isHashtag, isMention));
    }

    start = match.end;
  }

  // text after the last keyword or the whole text if it does not contain any keywords
  if (start < text.length) {
    if (segments.isNotEmpty && segments.last.isText) {
      segments.last.text += text.substring(start);
    } else {
      segments.add(TextSegment(text.substring(start)));
    }
  }

  return segments;
}
