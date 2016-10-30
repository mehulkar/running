import Foundation

let total_days = 365
let total_miles = 360

let cli_args = CommandLine.arguments

func get_remaining_miles() -> Int {
  let miles_run = Int(cli_args[1])!
  return total_miles - miles_run
}

func get_remaining_days() -> Int {
  let date = Date()
  let cal = Calendar.current
  let day_of_year = cal.ordinality(of: .day, in: .year, for: date)!
  return  total_days - day_of_year - (cli_args.count > 2 ? Int(cli_args[2])! : 0)
}

func get_daily_target() -> Float {
  let remaining_days = get_remaining_days()
  let remaining_miles = get_remaining_miles()
  return Float(remaining_miles) / Float(remaining_days)
}

// remaining weeks in year int division because we
// don't want to count current week anyway
func get_weekly_target() -> Float {
  let remaining_weeks = get_remaining_days() / 7
  let remaining_miles = get_remaining_miles()
  return Float(remaining_miles) / Float(remaining_weeks)
}

func main() -> String {
  var str = ""

  str = str + "Days remaining: \(get_remaining_days())\n"

  str = str + "Miles remaining: \(get_remaining_miles())\n"
  str = str + "Per day: \(get_daily_target())\n"
  str = str + "Per week: \(get_weekly_target())"
  return str
}

print(main())
