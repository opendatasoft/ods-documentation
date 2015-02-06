![Text Processors](processors-text-en.jpg)

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
This processor can be used to normalize a field value that should contain a valid URL. It can be used for instance when the field's value contains leading or trailing spaces, or does not have any scheme specification (in which case 'http://' is prepended to the field's value).

### Split Text
This processor can be used to split a field's value and to extract the Nth element to a new field.

### Concatenate Text
This processor can be used to concatenate two fields using a separator. You'll need to define the left and right hand sides of the concatenation, as well as the separator and the resulting field.

### Extract HTML
This processor strips HTML tags from field values.
