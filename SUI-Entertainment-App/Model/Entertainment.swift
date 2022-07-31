

import Foundation

struct Entertainment: Codable, Identifiable{
    let id: String
    var title: String
    var thumbnail: String
    var year: Int
    var category: String
    var rating: String
    var isBookmarked: Bool
    var isTrending: Bool
    
}
