// GraphQL resolvers for weather queries
struct WeatherResolver {
    func weather(city: String) async throws -> Weather {
        try await weatherService.current(city: city)
    }
    func forecast(city: String, days: Int) async throws -> [Forecast] {
        try await weatherService.forecast(city: city, days: days)
    }
}