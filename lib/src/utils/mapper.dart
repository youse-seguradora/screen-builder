/// Mapper is a abstract class to be implemented
/// when is necessary to transform [I] type to [O] type.
abstract class Mapper<I, O> {
  /// Method called to transform [I] type to [O] type.
  O map(I type);
}
