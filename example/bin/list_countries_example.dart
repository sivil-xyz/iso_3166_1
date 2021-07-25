import 'package:iso_3166_1/iso_3166_1.dart';

// from a package that depends on this package and contains .packages
// dart run iso_3166_1:list_countries [options/flags] [searched countries separated by space]

// for download and upgrade a package to the pub cache and create links to the tools
// pub global activate iso_3166_1
// pub global run list_countries
// list_countries

// show the help, options, allowed and default values
// list_countries -h

/**
 * 
-d, --dividing-line=<number of times>    Group the output results N times into N times
                                         (defaults to "")
-f, --file=<path>                        Save the output to a file
    --from=<row number>                  show the results starting from this row
                                         (defaults to "")
-l, --limit=<number>                     limit the results to this number
                                         (defaults to "")
    --lines-position=<number>            if lines are show, the position inside the fields(columns)
                                         (defaults to "0")
    --sort-before                        sort before applying the filter
                                         [asc (default), desc, ascending, descending]
    --sort-after                         sort after applying the filter
                                         [asc (default), desc, ascending, descending]
    --to=<row number>                    show the results ending into this row
                                         (defaults to "")
-t, --type                               The type of format output
                                         [csv, json, list, prettyJson, table (default)]
    --[no-]border                        Print an outer border for table
                                         (defaults to on)
-h, --help                               Show the help
    --lines                              Show the lines in the output
-p, --print-all                          Show all the results even if there is any search in progress
    --[no-]title                         Show a title (heading). Show the field names in each column
                                         (defaults to on)
    --title-lowercase                    Put the title in lowercase
    --fields=<field1,field2,...>         Fields (columns) to display in the output
                                         [id (default), name (default), alpha2 (default), alpha3 (default), prefix (default), flag (default)]
*/

// search, show and save to a file certian countries
// list_countries -p -f myFile.txt italy esp pt 20 unknown

// show the lines for each country, show the first 10 results
// list_countries --lines --limit 10

// show only the name,alpha2 columns from a range
// note that fields are separated by comma wihout spaces
// list_countries --fields name,alpha2 --from 5 --to 20

// show the ten last countries from the end
// list_countries --sort-before desc --limit 10

// show the ten last countries sorted alphabetically
// list_countries --sort-after desc --sort--before desc --limit 10

// show the antepenultimate term
// list_countries --sort-before desc --from 3 --to 3
