flutter build linux && flutter_to_debian # why the "&&": packing to .deb shouldn't be done if the flutter build has failed. "&&" ensures the next command will only run when the previous one succeed!
