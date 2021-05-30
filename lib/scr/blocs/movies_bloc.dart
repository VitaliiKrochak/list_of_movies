import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/item_model.dart';

class MoviesBloc {
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<ItemModel>();
  final _moviesFetcherUpComing = PublishSubject<ItemModel>();

  Observable<ItemModel> get allMovies => _moviesFetcher.stream;
  Observable<ItemModel> get allMoviesUpComing => _moviesFetcherUpComing.stream;

  fetchAllMovies() async {

    ItemModel itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }
  fetchAllMoviesUpComing() async {
    ItemModel itemModel = await _repository.fetchAllMoviesUpComing();
    _moviesFetcherUpComing.sink.add(itemModel);
  }
  dispose() {
    _moviesFetcher.close();
    _moviesFetcherUpComing.close();
  }
}

final bloc = MoviesBloc();
