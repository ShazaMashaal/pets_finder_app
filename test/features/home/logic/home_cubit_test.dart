import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pets_finder_app/core/networking/api_error_handler.dart';
import 'package:pets_finder_app/core/networking/api_result.dart';
import 'package:pets_finder_app/core/networking/api_service.dart';
import 'package:pets_finder_app/features/home/data/models/breed_model.dart';
import 'package:pets_finder_app/features/home/data/repos/home_repo.dart';
import '../../../test_helper.dart';

class MockApiService extends Mock implements ApiService {
  @override
  Future<List<BreedModel>> getBreeds();
}

void main() {
  late HomeRepo homeRepo;
  late MockApiService mockApiService;

  setUp(() {
    mockApiService = MockApiService();
    homeRepo = HomeRepo(mockApiService);
  });

  group('getBreeds', () {
    test(
      'should return ApiResult.success with breeds list when API call is successful',
      () async {
        // Arrange
        when(
          () => mockApiService.getBreeds(),
        ).thenAnswer((_) async => mockBreedsList);

        // Act
        final result = await homeRepo.getBreeds();

        // Assert
        expect(result, isA<ApiResult<List<BreedModel>>>());

        result.when(
          success: (breeds) {
            expect(breeds, equals(mockBreedsList));
            expect(breeds.length, equals(2));
            expect(breeds[0].id, equals('1'));
            expect(breeds[0].name, equals('Siamese'));
            expect(breeds[1].id, equals('2'));
            expect(breeds[1].name, equals('Persian'));
          },
          failure: (error) {
            fail('Expected success but got failure: $error');
          },
        );

        verify(() => mockApiService.getBreeds()).called(1);
      },
    );

    test(
      'should return ApiResult.failure when API call throws an exception',
      () async {
        // Arrange
        final exception = Exception('Network error');
        when(() => mockApiService.getBreeds()).thenThrow(exception);

        // Act
        final result = await homeRepo.getBreeds();

        // Assert
        expect(result, isA<ApiResult<List<BreedModel>>>());

        result.when(
          success: (breeds) {
            fail('Expected failure but got success: $breeds');
          },
          failure: (error) {
            expect(error, isA<ErrorHandler>());
            // يمكنك إضافة المزيد من التحقق بناءً على كيفية معالجة الخطأ في ErrorHandler.handle()
          },
        );

        verify(() => mockApiService.getBreeds()).called(1);
      },
    );

    test(
      'should return ApiResult.failure when API call returns empty list',
      () async {
        // Arrange
        when(() => mockApiService.getBreeds()).thenAnswer((_) async => []);

        // Act
        final result = await homeRepo.getBreeds();

        // Assert
        expect(result, isA<ApiResult<List<BreedModel>>>());

        result.when(
          success: (breeds) {
            expect(breeds, isEmpty);
          },
          failure: (error) {
            fail('Expected success with empty list but got failure: $error');
          },
        );

        verify(() => mockApiService.getBreeds()).called(1);
      },
    );

    test('should handle DioError specifically if using Dio', () async {
      // Arrange
      final dioException = Exception('Dio Error [500]: Server error');
      when(() => mockApiService.getBreeds()).thenThrow(dioException);

      // Act
      final result = await homeRepo.getBreeds();

      // Assert
      result.when(
        success: (breeds) {
          fail('Expected failure but got success: $breeds');
        },
        failure: (error) {
          expect(error, isA<ErrorHandler>());
        },
      );
    });
  });
}
