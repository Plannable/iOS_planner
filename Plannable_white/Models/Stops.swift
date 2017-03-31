import Foundation
import RealmSwift

class Stops: Object {
    dynamic var id = 0
    dynamic var href = ""
    dynamic var type = ""
    let refs = List<Refs>()
    let shipments = List<Shipments>()
    dynamic var location_name = ""
    dynamic var location_ref = ""
    dynamic var location_id = 0
    dynamic var location_latitude = 0.0
    dynamic var location_longitude = 0.0
    dynamic var location_coordinates_accuracy :String? = ""
    dynamic var address: Address?
    dynamic var planned_start = ""
    dynamic var planned_end = ""
    dynamic var actual_arrival :String? = ""
    dynamic var eta :String? = ""
    dynamic var pallets = 0.0
    dynamic var pieces = 0
    dynamic var weight = 0.0
    dynamic var volume = 0.0
    dynamic var actual_departure :String? = ""
}

