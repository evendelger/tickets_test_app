// поскольку по обработке ошибок нет ТЗ, то создам простой класс
final class Failure {
  const Failure([this.message = 'Произошла ошибка, повторите позже']);

  final String message;
}
