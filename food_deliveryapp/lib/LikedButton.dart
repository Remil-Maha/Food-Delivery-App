import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  bool isLiked = false;
  void Function()? onTap;
  LikeButton({Key? key, required this.isLiked, required this.onTap})
      : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isLiked = !widget.isLiked;
        });
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Icon(
        widget.isLiked ? Icons.favorite : Icons.favorite_border,
        color: widget.isLiked ? Colors.red : Colors.grey,
      ),
    );
  }
}
