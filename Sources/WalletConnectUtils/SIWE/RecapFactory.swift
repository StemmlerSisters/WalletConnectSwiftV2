import Foundation

public class RecapFactory {
    struct Empty: Codable { }
    static public func createRecap(resource: String, actions: [String]) -> [String: [String: [String: [AnyCodable]]]] {
        var recap: [String: [String: [String: [AnyCodable]]]] = ["att": [:]]

        var resourceRecap: [String: [AnyCodable]] = [:]

        for action in actions {
            resourceRecap[action] = [AnyCodable(Empty())]
        }

        recap["att"]![resource] = resourceRecap

        return recap
    }
}
