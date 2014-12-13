# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create elements with atomic numbers, names, symbols
elements = [["1", "H", "Hydrogen"], ["2", "He", "Helium"], ["3", "Li", "Lithium"], ["4", "Be", "Beryllium"], ["5", "B", "Boron"], ["6", "C", "Carbon"], ["7", "N", "Nitrogen"], ["8", "O", "Oxygen"], ["9", "F", "Fluorine"], ["10", "Ne", "Neon"], ["11", "Na", "Sodium"], ["12", "Mg", "Magnesium"], ["13", "Al", "Aluminium"], ["14", "Si", "Silicon"], ["15", "P", "Phosphorus"], ["16", "S", "Sulfur"], ["17", "Cl", "Chlorine"], ["18", "Ar", "Argon"], ["19", "K", "Potassium"], ["20", "Ca", "Calcium"], ["21", "Sc", "Scandium"], ["22", "Ti", "Titanium"], ["23", "V", "Vanadium"], ["24", "Cr", "Chromium"], ["25", "Mn", "Manganese"], ["26", "Fe", "Iron"], ["27", "Co", "Cobalt"], ["28", "Ni", "Nickel"], ["29", "Cu", "Copper"], ["30", "Zn", "Zinc"], ["31", "Ga", "Gallium"], ["32", "Ge", "Germanium"], ["33", "As", "Arsenic"], ["34", "Se", "Selenium"], ["35", "Br", "Bromine"], ["36", "Kr", "Krypton"], ["37", "Rb", "Rubidium"], ["38", "Sr", "Strontium"], ["39", "Y", "Yttrium"], ["40", "Zr", "Zirconium"], ["41", "Nb", "Niobium"], ["42", "Mo", "Molybdenum"], ["43", "Tc", "Technetium"], ["44", "Ru", "Ruthenium"], ["45", "Rh", "Rhodium"], ["46", "Pd", "Palladium"], ["47", "Ag", "Silver"], ["48", "Cd", "Cadmium"], ["49", "In", "Indium"], ["50", "Sn", "Tin"], ["51", "Sb", "Antimony"], ["52", "Te", "Tellurium"], ["53", "I", "Iodine"], ["54", "Xe", "Xenon"], ["55", "Cs", "Cesium"], ["56", "Ba", "Barium"], ["57", "La", "Lanthanum"], ["58", "Ce", "Cerium"], ["59", "Pr", "Praseodymium"], ["60", "Nd", "Neodymium"], ["61", "Pm", "Promethium"], ["62", "Sm", "Samarium"], ["63", "Eu", "Europium"], ["64", "Gd", "Gadolinium"], ["65", "Tb", "Terbium"], ["66", "Dy", "Dysprosium"], ["67", "Ho", "Holmium"], ["68", "Er", "Erbium"], ["69", "Tm", "Thulium"], ["70", "Yb", "Ytterbium"], ["71", "Lu", "Lutetium"], ["72", "Hf", "Hafnium"], ["73", "Ta", "Tantalum"], ["74", "W", "Tungsten"], ["75", "Re", "Rhenium"], ["76", "Os", "Osmium"], ["77", "Ir", "Iridium"], ["78", "Pt", "Platinum"], ["79", "Au", "Gold"], ["80", "Hg", "Mercury"], ["81", "Tl", "Thallium"], ["82", "Pb", "Lead"], ["83", "Bi", "Bismuth"], ["84", "Po", "Polonium"], ["85", "At", "Astatine"], ["86", "Rn", "Radon"], ["87", "Fr", "Francium"], ["88", "Ra", "Radium"], ["89", "Ac", "Actinium"], ["90", "Th", "Thorium"], ["91", "Pa", "Protactinium"], ["92", "U", "Uranium"], ["93", "Np", "Neptunium"], ["94", "Pu", "Plutonium"], ["95", "Am", "Americium"], ["96", "Cm", "Curium"], ["97", "Bk", "Berkelium"], ["98", "Cf", "Californium"], ["99", "Es", "Einsteinium"], ["100", "Fm", "Fermium"], ["101", "Md", "Mendelevium"], ["102", "No", "Nobelium"], ["103", "Lr", "Lawrencium"], ["104", "Rf", "Rutherfordium"], ["105", "Db", "Dubnium"], ["106", "Sg", "Seaborgium"], ["107", "Bh", "Bohrium"], ["108", "Hs", "Hassium"], ["109", "Mt", "Meitnerium"], ["110", "Ds", "Darmstadtium"], ["111", "Rg", "Roentgenium"], ["112", "Cn", "Copernicium"], ["113", "Uut", "Ununtrium"], ["114", "Fl", "Flerovium"], ["115", "Uup", "Ununpentium"], ["116", "Lv", "Livermorium"], ["117", "Uus", "Ununseptium"], ["118", "Uuo", "Ununoctium"]]
elements.each do |element|
  Element.create(atomic_number: element[0], symbol: element[1], name: element[2])
end
Element.all.each do |element|
  an = element.atomic_number
  case #assign periods
  when [1,3,11,19,37,55,87].include?(an)
    element.group = 1
  when [4,12,20,38,56,88].include?(an)
    element.group = 2
  when [21, 39, 71, 103].include?(an)
    element.group = 3
  when [22, 40, 72, 104].include?(an)
    element.group = 4
  when [23, 41, 73, 105].include?(an)
    element.group = 5
  when [24, 42, 74, 106].include?(an)
    element.group = 6
  when [25, 43, 75, 107].include?(an)
    element.group = 7
  when [26, 44, 76, 108].include?(an)
    element.group = 8
  when [27, 45, 77, 109].include?(an)
    element.group = 9
  when [28, 46, 78, 110].include?(an)
    element.group = 10
  when [29, 47, 79, 111].include?(an)
    element.group = 11
  when [30, 48, 80, 112].include?(an)
    element.group = 12
  when [5, 13, 31, 49, 81, 113].include?(an)
    element.group = 13
  when [6, 14, 32, 50, 82, 114].include?(an)
    element.group = 14
  when [7, 15, 33, 51, 83, 115].include?(an)
    element.group = 15
  when [8, 16, 34, 52, 84, 116].include?(an)
    element.group = 16
  when [9, 17, 35, 53, 85, 117].include?(an)
    element.group = 17
  when [2, 10, 18, 36, 54, 86, 118].include?(an)
    element.group = 18
  when (57..71).include?(an)
    element.group = 'Lanthanide'
  when (89..103).include?(an)
    element.group = 'Actinide'
  end

  case # assign groups
  when (1..2).include?(an)
    element.period = 1
  when (3..10).include?(an)
    element.period = 2
  when (11..18).include?(an)
    element.period = 3
  when (19..36).include?(an)
    element.period = 4
  when (37..54).include?(an)
    element.period = 5
  when (55..86).include?(an)
    element.period = 6
  when (87..118).include?(an)
    element.period = 7
  end

  element.save
end


