""" This script creates 5 SQL Select queries to be used by data-fetchers. 

It combines four levels: 
    * geoimputed GED events 
    * Unimputed ACLED protests
    * amelia-imputed cm rhs
    * amelia-imputed pgm rhs
In 5 combinations of imputations.
Outputs end up in SQLGenerators/output/select_imp_pgm_cm.sql

If more variables are needed simply add them to 
SQLGenerators/source/select_imp_pgm_cm.sql
"""

nl = "\n"
header = "-- This file was generated by SQLGenerators/select_imp_pgm_cm.py\n"
header +="-- These queries join the PGM and CM level imputed right hand side\n"
header +="-- variables with the geoimputed GED events and unimputed ACLED. \n"
header +="-- Output is at the PGM level. \n\n\n"


for imp in range(1,6):
    with open("source/select_imp_pgm_cm.sql", "r") as f:
        source = f.read()

    imp = str(imp)
    table_pgm = "pgmimp" + imp + "bnd"
    source = source.replace("$table_pgm", table_pgm)
    table_cm = "cm_imp_" + imp
    source = source.replace("$table_cm", table_cm)

    ged_dummy_sb = "ged_sb_dummy_" + imp
    ged_dummy_ns = "ged_ns_dummy_" + imp
    ged_dummy_os = "ged_os_dummy_" + imp
    source = source.replace("$ged_sb_dummy_n", ged_dummy_sb)
    source = source.replace("$ged_ns_dummy_n", ged_dummy_ns)
    source = source.replace("$ged_os_dummy_n", ged_dummy_os)

    path_output = "../SQLSelects/pgm_imp_" + imp + ".sql"
    with open (path_output, "w") as f:
        f.write(header)
        f.write(source)
    print("Wrote", path_output)