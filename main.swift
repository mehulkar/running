import Foundation

let arguments = CommandLine.arguments

let total_days = 365;
let total_miels = 360;

// miles remaining
var miles_run = Int(arguments[1])!
var remaining_miles = total_miels - miles_run

// days remaining
let date = Date()
let cal = Calendar.current
let day_of_year = cal.ordinality(of: .day, in: .year, for: date)!
var remaining_days = total_days - day_of_year
var daily_target = Float(remaining_miles) / Float(remaining_days)

// remaining weeks in year
// int division because we don't want to count current
// week anyway
var remaining_weeks = remaining_days / 7
var weekly_target = Float(remaining_miles) / Float(remaining_weeks)

print("Miles remaining: \(remaining_miles)")
print("Days remaining: \(remaining_days)")
print("Per day: \(daily_target)")
print("Per week: \(weekly_target)")
