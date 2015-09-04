# Field Processors

![Fields Processors](processors-fields-en.jpg)

### Copy a Field
Copy a field value into another field.

### Add a Field
Add a raw new field, that can be filled by other processors.

### Skip a Record
Skip a record if one of its fields matches a specific value.

### Join Dataset
This processor allows to you to Join two datasets together. Think about the classical database join.

Let's take an example. You have two datasets:

**First dataset**: The list of taxi stations in Paris.

station_id | station_name | station_address
---------- | ------------ | ---------------
1 | Tour Eiffel | 69 quai Branly, 75007 Paris
2 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris

The name of this dataset is **paris_taxis_stations**.

**Second dataset**: The number of taxis waiting per station in Paris.

station_id | number
---------- | ------
1 | 10
2 | 15

The Join processor allows you to enrich the second dataset with colums coming from the first dataset.

**Resulting dataset after a Join**

station_id | number | station_name | station_address
---------- | ------ | ------------ | ---------------
1 | 10 | Tour Eiffel | 69 quai Branly, 75007 Paris
2 | 15 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris


It takes the following parameters:

* **Dataset URL**
 
   This parameter shall contain the URL of the dataset. Simple copy paste it from your web browser. Example of a valid URL: `http://opendata.paris.fr/explore/dataset/paris_taxis_stations/?tab=table`
   
* **Local Key**

   The local field that will be used to identify the corresponding records in the remote dataset. More than one key can be specified.
   
* **Remote Key**

   The remote field corresponding to the local key. This can be a list.
  
* **Output Fields**

   The list of fields to retrieve.
   
* **Retrieve All Fields**

   Set to retrieve all the fields of the remote dataset.
   
* **Case Sensitive**

* **Collapse Duplicates**

   In some specific cases, the remote dataset may contain more than one row matching the local key. In which case, you may want to either collapse duplicates (that is, generate a single row which will contain multi-valued fields) or not. If this parameter is set, you can specify the character to use to separate values in the generated field in the **Separator** parameter.
   
Let's take an example and assume that the first dataset contains two rows for the first station:   

station_id | station_name | station_address
---------- | ------------ | ---------------
1 | Tour Eiffel | 69 quai Branly, 75007 Paris
1 | Quai Branly | 69 quai Branly, 75007 Paris
2 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris

If **Collapse Duplicates** is set (with **Separator** set to `|`), the Join will result in:

station_id | number | station_name | station_address
---------- | ------ | ------------ | ---------------
1 | 10 | Tour Eiffel&#124;Quai Branly | 69 quai Branly, 75007 Paris&#124;69 quai Branly, 75007 Paris
2 | 15 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris

If **Collapse Duplicates** is not set, the Join will result in:

station_id | number | station_name | station_address
---------- | ------ | ------------ | ---------------
1 | 10 | Tour Eiffel | 69 quai Branly, 75007 Paris
1 | 10 | Quai Branly | 69 quai Branly, 75007 Paris
2 | 15 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris

This processor is not yet available by default. Please contact OpenDataSoft support team if you plan to use it, we will activate it for you.

### Transpose Fields

This processor makes it possible to transform field names into field values.

Let's take a simple example, with a dataset containing for a couple of countries the evolution of the number of inhabitants from 2020 to 2030.

The dataset initially looks like this.

Country name | 2020 | 2030 | 2050
------------ | ---- | ---- | ----
France | 70 000 000 | 80 000 000 | 100 000 000
UK | 65 000 000 | 70 000 000 | 90 000 000
USA | 350 000 000 | 400 000 000 | 450 000 000

Publishing this dataset as is would make it difficult to draw meaningful visualizations for instance. 

Let's have a look at an alternative way to represent this dataset.

Coutry Name | Year | Inhabitants
----------- | ---- | -----------
France | 2020 | 70 000 000
UK | 2020 | 65 000 000
USA | 2020 | 350 000 000
France | 2030 | 80 000 000
UK | 2030 | 70 000 000
USA | 2030 | 400 000 000
France | 2050 | 100 000 000
UK | 2050 | 90 000 000
USA | 2050 | 450 000 000

With this representation, it becomes super easy to build subsets of the dataset using facets based filtering mechanism.

The **Transpose Fields** processor makes it super easy to configure this kind of transformation.

You'll need to define the following parameters:

* **Fixed fields**
  
  Defines the list of fields that shall be kept as is. In the above sample, this would have been *Country Name*
  
* **Label for title column**

  Defines the label of the new column containing the names of the fields that have been transposed. In the above sample, this would have been *Year*.
  
* **Label for the value column**

  Defines the label of the new column containing the former cell values. This would have been *Inhabitants* in the above sample.
  
* **One line**

  Make it possible to group / concat transposal results, using a specific **Separator**. With the above sample, activating the One line option and choosing ';' as a separator, th result would have been the following:
  
  
Coutry Name | Year | Inhabitants
----------- | ---- | -----------
France | 2050;2020;2030 | 100 000 000;70 000 000;80 000 000
UK | 2050;2020;2030 | 90 000 000;65 000 000;70 000 000
USA | 2050;2020;2030 | 450 000 000;350 000 000;400 000 000

