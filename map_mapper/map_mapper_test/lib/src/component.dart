import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'component.g.dart';

@mapMapped
class Component {
  final String description;

  Component({
    required this.description,
  });
}
