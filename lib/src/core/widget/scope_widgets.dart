import 'package:flutter/material.dart';

typedef BuildScope = Widget Function(Widget child);

typedef BuildWidget = Widget Function(BuildContext context, Widget? child);

Never _childIsNull() => throw ArgumentError.notNull('child');

class ScopeProvider extends StatelessWidget {
  const ScopeProvider({
    required this.buildScope,
    this.child,
    super.key,
  });

  final BuildScope buildScope;

  final Widget? child;

  @override
  Widget build(BuildContext context) => buildScope(child ?? _childIsNull());
}

/// A widget that provides a list of scopes to its descendants.
/// The order of the scope matters.
class ScopesProvider extends StatelessWidget {
  const ScopesProvider({
    required this.child,
    required this.providers,
    super.key,
  });

  /// The widget below this widget in the tree.
  /// Note that if you want to read values from the scopes, check if
  /// you have right [BuildContext] for that.
  final Widget child;

  /// List of scopes to provide to descendants.
  final List<ScopeProvider> providers;

  @override
  Widget build(BuildContext context) => providers.reversed.fold<Widget>(
        child,
        (previousValue, element) => element.buildScope(previousValue),
      );
}
