import Foundation
import RealmSwift

class Load: Object {
    dynamic var id = 0
    dynamic var load_number = ""
    let stops = List<Stops>()
    let shipments = List<Shipments>()
    let refs = List<Refs>()
    dynamic var status = ""
    dynamic var load_group = ""
//    dynamic var views: Views?
    dynamic var vehicle :String? = ""
    dynamic var driver :String? = ""
    dynamic var carrier: Carrier?
}

