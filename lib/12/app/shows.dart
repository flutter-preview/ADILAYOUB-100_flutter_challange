import 'package:flutte_challange/12/app/app_flow_controller.dart';
import 'package:flutte_challange/12/core/constants.dart';
import 'package:flutte_challange/12/core/models/movie.dart';
import 'package:flutte_challange/12/core/widgets/primary_button.dart';
import 'package:flutte_challange/12/features/genre/genre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultScreen extends ConsumerWidget {
  // user material nvigation
  static route({bool fullscreenDialog = true}) => (MaterialPageRoute(
      builder: (context) => const ResultScreen(),
      fullscreenDialog: fullscreenDialog));
  const ResultScreen({super.key});
  final double movieheight = 160;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const CoverImage(),
                Positioned(
                    width: MediaQuery.of(context)
                        .size
                        .width, // full width of the screen
                    bottom: -(movieheight / 2), // push if further down
                    child: MovieImageDetails(
                      movie: ref.watch(movieFlowControllerProvider).movie,
                      movieHeight: movieheight,
                    )),
              ],
            ),
            SizedBox(
              height: movieheight / 2,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                ref.watch(movieFlowControllerProvider).movie.overview,
                style: theme.textTheme.bodyMedium,
              ),
            )
          ],
        )),
        PrimaryButton(
            onPressed: () => Navigator.of(context).pop(),
            text: 'Find Another Movie '),
        const SizedBox(height: kMediumSpacing)
      ]),
    );
  }
}

class CoverImage extends StatelessWidget {
  const CoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // we want to fade a bit at the bottom
      constraints: const BoxConstraints(minHeight: 298), // wider devices

      child: ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
                //fade start at
                begin: Alignment.center,
                //and completes at
                end: Alignment.bottomCenter,
                //define colors of this linear gradent
                colors: [
                  Theme.of(context).scaffoldBackgroundColor,
                  Colors.transparent,
                ]).createShader(Rect.fromLTRB(
                0, 0, rect.width, rect.height)); // for full shader mask size
          },
          blendMode:
              BlendMode.dstIn, // add the blend effect we are adding above
          child: const Placeholder()),
    );
  }
}

class MovieImageDetails extends ConsumerWidget {
  const MovieImageDetails(
      {super.key, required this.movie, required this.movieHeight});
  final Movie movie;
  final double movieHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          SizedBox(width: 100, height: movieHeight, child: const Placeholder()),
          const SizedBox(
            width: kMediumSpacing,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: theme.textTheme.headlineMedium,
              ),
              Text(
                movie.genreSeperated,
                style: theme.textTheme.bodyMedium,
              ),
              Row(
                children: [
                  Text(
                    movie.vote.toString(),
                    style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.textTheme.bodyMedium?.color
                            ?.withOpacity(0.62)),
                  ),
                  const Icon(
                    Icons.star_rounded,
                    size: 20,
                    color: Colors.amber,
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
