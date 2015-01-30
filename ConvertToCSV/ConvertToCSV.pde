Table newtable;
Table oldtable;

void setup() {
  
//  oldtable = loadTable("data/zoo.data", "header");

//  println(table.getRowCount() + " total rows in table"); 

//  for (TableRow row : table.rows()) {
    
//    int id = row.getInt("id");
//    String species = row.getString("species");
//    String name = row.getString("name");
    

//  }
  
  newtable = new Table();
  newtable.addColumn("animalname");//no column params defaults to string
  newtable.addColumn("hair");
  newtable.addColumn("feathers");
  newtable.addColumn("eggs");
  newtable.addColumn("milk");
  newtable.addColumn("airborne");
  newtable.addColumn("aquatic");
  newtable.addColumn("predator");
  newtable.addColumn("toothed");
  newtable.addColumn("backbone");
  newtable.addColumn("breathes");
  newtable.addColumn("venomous");
  newtable.addColumn("fins");
  newtable.addColumn("legs", Table.INT);
  newtable.addColumn("tail");
  newtable.addColumn("domestic");
  newtable.addColumn("catsize");
  newtable.addColumn("type", Table.INT);
  
  //loop
  TableRow newRow = newtable.addRow();
  newRow.setString("animalname", "name");
  newRow.setString("hair", "");
  newRow.setString("feathers", "");
  newRow.setString("eggs", "");
  newRow.setString("milk", "");
  newRow.setString("airborne", "");
  newRow.setString("aquatic", "");
  newRow.setString("predator", "");
  newRow.setString("toothed", "");
  newRow.setString("backbone", "");
  newRow.setString("breathes", "");
  newRow.setString("venomous", "");
  newRow.setString("fins", "");
  newRow.setInt("legs", 4); //numlegs
  newRow.setString("tail", "");
  newRow.setString("domestic", "");
  newRow.setString("catsize", "");
  newRow.setInt("type", 2);
  //endloop
  
  saveTable(newtable, "data/zoo.csv");
}
