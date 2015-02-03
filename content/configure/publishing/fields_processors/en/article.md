![Fields Processors](processors-fields-en.jpg)

### Copy a Field

### Add a Field

### Skip a Record

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
