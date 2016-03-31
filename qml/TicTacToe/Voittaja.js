function tarkistus() {

    for (var i=0; i<3; ++i) {
        if (lauta.children[i].state !== ""
                && lauta.children[i].state === lauta.children[i+3].state
                && lauta.children[i].state === lauta.children[i+6].state)
            return true;

        if (lauta.children[i*3].state !== ""
                && lauta.children[i*3].state === lauta.children[i*3+1].state
                && lauta.children[i*3].state === lauta.children[i*3+2].state)
            return true;


        if (lauta.children[0].state !== ""
                && lauta.children[0].state === lauta.children[4].state
                && lauta.children[0].state === lauta.children[8].state)
            return true;

        if (lauta.children[2].state !== ""
                && lauta.children[2].state === lauta.children[4].state
                && lauta.children[2].state === lauta.children[6].state)
            return true;
    }
    return false;
}

