import Foundation

extension Date {
    
    mutating func changeDays(by days: Int) {
        self = Calendar.current.date(byAdding: .day, value: days, to: self)!
    }
    
    mutating func getDateAsString(_ addDays: Int = 0) -> String {
        self.changeDays(by: addDays)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: self)
    }
}

var currentDate = Date()

// Current Date as String
currentDate.getDateAsString()

///prints: - "2019-12-19"

//Current Date minus one day as String
currentDate.getDateAsString(-1)

///Prints: - "2019-12-18"

//Current Date minus 30 days as String
currentDate.getDateAsString(-30)

///Prints: - "2019-11-18"
