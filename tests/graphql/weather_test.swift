// GraphQL integration tests
@Suite struct GraphQLTests {
    @Test func weatherQuery() async throws {
        let result = try await client.execute(query: \"{ weather(city: \\"Paris\\") { temperature } }\")
        #expect(result.data != nil)
    }
    @Test func forecastQuery() async throws {
        let result = try await client.execute(query: \"{ forecast(city: \\"London\\", days: 3) { date high low } }\")
        #expect(result.data != nil)
    }
}