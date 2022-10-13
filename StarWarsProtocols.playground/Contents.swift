/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
//struct MasterYoda {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 9 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "Do or do not." }
//}
//
//struct MasterObiWan {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "These are not the droids you're looking for." }
//}
//
//struct MasterQuiGon {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func mindControl() -> String { return "Republic credits will do." }
//  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
//}
//
//struct DarthVader {
//  func lightSaberSkill() -> Int { return 9 }
//  func telekinesis() -> Int { return 8 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return false }
//}
//
//struct DarthSidious {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 7 }
//  func prescience() -> Int { return 6 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return true }
//}
//
//struct DarthTyrannous {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return false }
//  func forceLightning() -> Bool { return true }
//}




protocol X {
    func lightSaberSkill() -> Int
    func telekinesis() -> Int
    func prescience() -> Int
}
extension X {
    func lightSaberSkill() -> Int{
        return 8
    }
    func telekinesis() -> Int {
        return 5
    }
    func prescience() -> Int {
        return 5
    }
}
protocol Y {
    func introspection() -> String
    func mindControl() -> String
}
extension Y {
    func introspection() -> String {
        return "Search your feelings."
    }
}
protocol Z {
    func forceChoke() -> Bool
    func forceLightning() -> Bool
}
extension Z {
    func forceChoke() -> Bool {
        return true
    }
    func forceLightning() -> Bool {
        return true
    }
}

struct MasterYoda: X, Y {
    func telekinesis() -> Int {
        return 9
    }
    func mindControl() -> String {
        return "Do or do not."
    }
}
struct MasterObiWan: X, Y {
    func mindControl() -> String { return "These are not the droids you're looking for." }

}
struct MasterQuiGon: X, Y {
    func mindControl() -> String { return "Republic credits will do." }
    func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}
struct DarthVader: X, Z {
    func lightSaberSkill() -> Int { return 9 }
    func telekinesis() -> Int { return 8 }
    func forceLightning() -> Bool { return false }
}
struct DarthSidious: X, Z {
    func telekinesis() -> Int { return 7 }
    func prescience() -> Int { return 6 }
}
struct DarthTyrannous: X, Z {
    func forceChoke() -> Bool { return false }
}

let yoda = MasterYoda()
yoda.lightSaberSkill()
yoda.telekinesis()
yoda.prescience()
yoda.introspection()
yoda.mindControl()

let obi = MasterObiWan()
obi.lightSaberSkill()
obi.telekinesis()
obi.prescience()
obi.introspection()
obi.mindControl()

let qui = MasterQuiGon()
qui.lightSaberSkill()
qui.telekinesis()
qui.prescience()
qui.introspection()
qui.mindControl()

let vader = DarthVader()
vader.lightSaberSkill()
vader.telekinesis()
vader.prescience()
vader.forceChoke()
vader.forceLightning()

let sidious = DarthSidious()
sidious.lightSaberSkill()
sidious.telekinesis()
sidious.prescience()
sidious.forceChoke()
sidious.forceLightning()

let tyrannous = DarthTyrannous()
tyrannous.lightSaberSkill()
tyrannous.telekinesis()
tyrannous.prescience()
tyrannous.forceChoke()
tyrannous.forceLightning()
