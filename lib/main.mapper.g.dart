// This file has been generated by the dart_json_mapper v2.2.5+1
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'dart:collection' show HashSet, UnmodifiableListView;
import 'package:dart_json_mapper/dart_json_mapper.dart'
    show JsonMapper, JsonMapperAdapter, typeOf;

final mainGeneratedAdapter = JsonMapperAdapter(
    title: 'ess',
    url: 'package:ess/main.dart',
    refUrl: 'https://helpisdev.github.io/ess',
    reflectableData: null,
    memberSymbolMap: null,
    valueDecorators: {},
    enumValues: {});

Future<JsonMapper> initializeJsonMapperAsync(
        {Iterable<JsonMapperAdapter> adapters = const []}) =>
    Future(() => initializeJsonMapper(adapters: adapters));

JsonMapper initializeJsonMapper(
    {Iterable<JsonMapperAdapter> adapters = const []}) {
  JsonMapper.enumerateAdapters([...adapters, mainGeneratedAdapter],
      (JsonMapperAdapter adapter) {
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}
