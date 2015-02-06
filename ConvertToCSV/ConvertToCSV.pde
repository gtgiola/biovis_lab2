Table newtable;
boolean values[];

void setup() {
  values = new boolean[17];
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

  String lines[] = loadStrings("data/zoo.data");
  for (int i = 0; i<lines.length; i++) {
    int[] list = int(split(lines[i], ','));
    TableRow newRow = newtable.addRow();
    for (int x = 1, y = 0; x < 13; x++, y++) {
      if (list[x] == 1) {
        values[y] = true;
      } else if (list[x] == 0) {
        values[y] = false;
      }
    }
    //int numLegs = Integer.parseInt(lines[13]);
    //int numType = Integer.parseInt(lines[17]);
    for (int z = 14, v = 13; z < 17; z++, v++) {
      if (list[z] == 1) {
        values[v] = true;
      } else if (list[z] == 0) {
        values[v] = false;
      }
    }
    newRow.setString("animalname", str(list[0]));
    newRow.setString("hair", str(values[0]));
    newRow.setString("feathers", str(values[1]));
    newRow.setString("eggs", str(values[2]));
    newRow.setString("milk", str(values[3]));
    newRow.setString("airborne", str(values[4]));
    newRow.setString("aquatic", str(values[5]));
    newRow.setString("predator", str(values[6]));
    newRow.setString("toothed", str(values[7]));
    newRow.setString("backbone", str(values[8]));
    newRow.setString("breathes", str(values[9]));
    newRow.setString("venomous", str(values[10]));
    newRow.setString("fins", str(values[11]));
    newRow.setInt("legs", list[13]);
    newRow.setString("tail", str(values[13]));
    newRow.setString("domestic", str(values[14]));
    newRow.setString("catsize", str(values[15]));
    newRow.setInt("type", list[17]);
  }

  saveTable(newtable, "data/zoo.csv");
}

