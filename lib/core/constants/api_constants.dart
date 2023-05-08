class ApiConstant {
  static ApiConstant? _instance;
  // Avoid self instance
  ApiConstant._();
  static ApiConstant get instance {
    _instance ??= ApiConstant._();
    return _instance!;
  }

  //! BASE  URL
  static const baseUrlLive = "https://booking-com.p.rapidapi.com";
  static const baseUrlLocal = "https://booking-com.p.rapidapi.com";

  // Endpoints

  static const homePopularHotelEndPoint = "$baseUrlLive/v1/hotels/search-by-coordinates";
  static const homePopularHotelByLocationEndPoint = "$baseUrlLive/v1/hotels/locations";
  static const hotelDetailsEndPoint = "$baseUrlLive/v1/hotels/data";
  static const hotelDetailsDescriptionEndPoint = "$baseUrlLive/v1/hotels/description";
  static const hotelDetailsPhotosEndPoint = "$baseUrlLive/v1/hotels/photos";
  static const hotelDetailsReviewsEndPoint = "$baseUrlLive/v1/hotels/reviews";
  static const hotelDetailsAmentiesEndPoint = "$baseUrlLive/v1/hotels/facilities";
  static const CurrencyListEndPoint = "$baseUrlLive/v1/metadata/exchange-rates";
  static const HotelRoomsEndPoint = "$baseUrlLive/v1/hotels/room-list";
  static const HotelNearByPlacesEndPoint = "$baseUrlLive/v1/hotels/nearby-places";
  static const HotelMetaDataEndPoint = "$baseUrlLive/v1/hotels/reviews-filter-metadata";
  static const HotelMapLocationEndPoint = "$baseUrlLive/v1/hotels/map-markers";
  static const HotelExchangeRateEndPoint = "$baseUrlLive/v1/metadata/exchange-rates";
}
