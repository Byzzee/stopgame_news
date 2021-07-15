import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: List<Widget>.filled(9, const _ItemSkeleton())
      ),
    );
  }
}

class _ItemSkeleton extends StatelessWidget {
  const _ItemSkeleton({Key? key, double? padding})
      : this.padding = padding ?? 10.0, super(key: key);

  final double padding;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.height;

    return Container(
      height: _height * 0.14,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade800,
                highlightColor: Colors.grey.shade600,
                period: Duration(seconds: 2),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black54,
                  ),
                )
              )
            ),
            SizedBox(
              width: padding,
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: padding,
                  ),
                  Flexible(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade600,
                      period: Duration(seconds: 2),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black54,
                        ),
                      )
                    )
                  ),
                  SizedBox(
                    height: padding,
                  ),
                  Flexible(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade600,
                      period: Duration(seconds: 2),
                      child: Container(
                        height: double.infinity,
                        width: _width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black54,
                        ),
                      )
                    )
                  ),
                  SizedBox(
                    height: padding,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

