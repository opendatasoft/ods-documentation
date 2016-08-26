The API objects
===============

Both versions of the API will provide you access to the same objects, only in different ways. It is very important to
be familiar with these objects before diving the full specification of each API.

All the objects within the platform are related to each other through a tree structure. Which means that you can think
of OpenDataSoft as such:

* The **OpenDataSoft platform** is a network of OpenDataSoft portals.
* A **portal** provides a **catalog** of all of its **datasets**.
* Each **dataset** is defined by a dictionary of **metadata**, a **data schema** (specifying fields names and types)
  and a collection of **records**.
* Each **record** provides values for each of the dataset's fields.

There are of course many more objects within the platform, but they are only relevant in very specific contexts.
