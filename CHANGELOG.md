## 0.0.1

* TODO: Describe initial release.
CHANGELOG
0.0.1 - YYYY-MM-DD
Initial Release of Ethiopian Date Picker.

Core Functionality: Provides a customizable dialog-based Ethiopian date picker for Flutter applications.

Date Selection: Allows users to select a specific Ethiopian date.

Gregorian Conversion: Returns the selected Ethiopian date converted to its corresponding Gregorian calendar value (as a DateTime object).

Month & Year Navigation:

Users can navigate between months using chevron buttons.

Users can select specific years from a dropdown grid.

Date Range Constraints (firstDay, lastDay):

Supports defining a valid date range. Dates outside this range are grayed out and unselectable in the calendar grid.

The year selection dropdown and month navigation buttons respect these date range constraints.

Visual Highlighting:

The currently selected date is highlighted with a solid green circular background.

firstDay and lastDay can be visually distinguished (e.g., with light blue/orange backgrounds and borders).

Localization Support (localization):

Introduced EthiopianDatePickerLocalization enum (US, AM, OR, TI, SI, SO).

Supports localized month names, day names (initials), "Select date" title, and "Ok"/"Cancel" button texts for:

English (US)

Amharic (AM)

Oromiffa (OR)

Tigrinya (TI)

Sidama (SI) - Note: Placeholder month/day names, please update with actual translations.

Somali (SO) - Note: Placeholder month/day names, please update with actual translations.

Defaults to English (US) if no localization is provided.