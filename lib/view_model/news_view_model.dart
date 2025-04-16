import 'package:newsapp_api/model/categories_news_model.dart';
import 'package:newsapp_api/model/news_channel_headlines_model.dart';
import 'package:newsapp_api/repository/news_repository.dart';

class NewsViewModel {
  final _repo = NewsRepository();

  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlinesApi(
      String channelNews) async {
    final response = await _repo.fetchNewsChannelHeadlinesApi(channelNews);
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNews(String category) async {
    final response = await _repo.fetchNewsCategoires(category);
    return response;
  }
}
