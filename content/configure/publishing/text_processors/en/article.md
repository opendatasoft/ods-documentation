### Replace Regexp
This processor can be used to replace a random regular expression pattern by new content. See <http://en.wikipedia.org/wiki/Regular_expression> for more details on how to write a regular expressions.

### Extract Text
This processor can be used to extract an arbitrary pattern expressed as a regular expression out of a string using sub matching.

The syntax of the sub-matching expression to specify is the following: `(?P<NAME>REGEXP)`. Where:

* Name is the name of a new field which will receive the result of the extraction
* REXGEXP is the submatch expression

For example, let's assume that you want to extract a street name out of an address. That is, for the address 

    600 Pennsylvania Ave NW, Washington, DC 20500, États-Unis 
    
you might want to extract the value `Pennsylvania Ave NW`in a field  `street_name`.

You would have to write the following expression:
    
    [0-9]+ (?P<street_name>.*), .*, .*, .*
    
And if you want to extract the street number in a field `street_number`, simply extend the previous expression:

    (?P<street_number>[0-9]+) (?P<street_name>.*), .*, .*, .*

### Normalize URL

### Split Text

### Concatenate Text

### Extract HTML
