// test/test_helpers.dart
import 'package:mocktail/mocktail.dart';
import 'package:pets_finder_app/core/networking/api_error_handler.dart';
import 'package:pets_finder_app/core/networking/api_service.dart';
import 'package:pets_finder_app/features/home/data/models/breed_model.dart';
import 'package:pets_finder_app/features/home/data/models/pet_model.dart';

class MockApiService extends Mock implements ApiService {}

class MockErrorHandler extends Mock implements ErrorHandler {}

List<BreedModel> get mockBreedsList => [
  BreedModel(
    id: '1',
    name: 'Siamese',
    temperament: 'Active, Agile',
    origin: 'Thailand',
    description: 'A beautiful cat breed',
  ),
  BreedModel(
    id: '2',
    name: 'Persian',
    temperament: 'Calm, Gentle',
    origin: 'Iran',
    description: 'A fluffy cat breed',
  ),
];
final mockPets = [
  PetModel(
    id: '1',
    url: 'https://example.com/cat1.jpg',
    width: 500,
    height: 500,
    breeds: [BreedModel(id: '1', name: 'Siamese')],
  ),
  PetModel(
    id: '2',
    url: 'https://example.com/cat2.jpg',
    width: 600,
    height: 600,
    breeds: [BreedModel(id: '1', name: 'Siamese')],
  ),
];
//
// void registerFallbackValues() {
//   registerFallbackValue(MockErrorHandler());
// }
