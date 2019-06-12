/// This helper function accepts flat birthdays list from API.
/// Returns the same data grouped & sorted by months.
///
/// input:
/// [
///   {
///     date: 05.01.1993,
///     firstName: Alyssa,
///     lastName: Holland,
///     avatar: https://randomuser.me/api/portraits/women/51.jpg
///   },
///   {
///     date: 05.01.1993,
///     firstName: Abella,
///     lastName: Donalds,
///     avatar: https://randomuser.me/api/portraits/women/99.jpg
///   },
///   {
///     date: 15.01.1993,
///     firstName: John,
///     lastName: Doe,
///     avatar: https://randomuser.me/api/portraits/women/19.jpg
///   },
///   {
///     date: 08.02.1993,
///     firstName: Minnie,
///     lastName: Nathaniel,
///     avatar: https://randomuser.me/api/portraits/women/28.jpg
///   }
/// ]
///
/// output:
/// {
///   'January': {
///     '05': [
///       {
///         date: 05.01.1993,
///         firstName: Alyssa,
///         lastName: Holland,
///         avatar: https://randomuser.me/api/portraits/women/51.jpg
///       }
///     ],
///     '15': [
///       {
///         date: 15.01.1993,
///         firstName: John,
///         lastName: Doe,
///         avatar: https://randomuser.me/api/portraits/women/19.jpg
///       }
///     ]
///   },
///   'February': {
///     '08': [
///       {
///         date: 15.02.1993,
///         firstName: Minnie,
///         lastName: Nathaniel,
///         avatar: https://randomuser.me/api/portraits/women/28.jpg
///       }
///     ]
///   }
/// }
prettifyData(birthDays) {
  final Map<String, Map<String, List<Map<String, String>>>> result = new Map();

  birthDays.forEach((Map<String, String> birthDay){
    // Getting months & day
    final month = birthDay['date'].substring(3, 5);
    final day = birthDay['date'].substring(0, 2);

    if (!result.containsKey(months[month])) {
      // Adding month if not added yet.
      result[months[month]] = new Map();
    }

    if (!result[months[month]].containsKey(day)) {
      // Adding day if not added yet.
      result[months[month]][day] = new List();
    }

    result[months[month]][day].add(birthDay);
  });

  return result;
}

final Map<String, String> months = {
  '01': 'January',
  '02': 'February',
  '03': 'March',
  '04': 'April',
  '05': 'May',
  '06': 'June',
  '07': 'July',
  '08': 'August',
  '09': 'September',
  '10': 'October',
  '11': 'November',
  '12': 'December',
};
