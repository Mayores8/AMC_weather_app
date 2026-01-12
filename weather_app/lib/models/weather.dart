class Weather {
  final String city; // Changed from cityName to city to match your UI
  final double temperature;
  final String description; // Added
  final int humidity;       // Added
  final double windSpeed;   // Added

  Weather({
    required this.city,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.windSpeed,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'], // e.g., "light rain"
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'].toDouble(),
    );
  }
}