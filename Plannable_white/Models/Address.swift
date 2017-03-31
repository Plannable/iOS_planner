import Foundation
import RealmSwift


class Address: Object {
    dynamic var address1 = ""
    dynamic var address2 :String? = ""
    dynamic var address3 :String? = ""
    dynamic var city :String? = ""
    dynamic var state :String? = ""
    dynamic var zip :String? = ""
    dynamic var country :String? = ""
}

