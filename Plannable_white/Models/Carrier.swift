import Foundation
import RealmSwift

class Carrier: Object {
    dynamic var name :String? = ""
    dynamic var phone :String? = ""
    dynamic var vendor_nbr :String? = ""
    dynamic var address: Address?
    dynamic var fax :String? = ""
}

