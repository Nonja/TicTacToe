import QtQuick 2.0

Rectangle {
    width: 400
    height: 400
    color: "black"

    Text{
        text: "Ristinolla"
        color: "white"
        font.pointSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
    }


    Pelilauta{
        id: lauta
    }

    Rectangle{
        id: pelaaja1
        width: 30; height: 30
        color: "darkmagenta"
        radius: 5
        x: 10; y: 360
    }

    Rectangle{
        id: pelaaja2
        width: 30; height: 30
        color: "darkgreen"
        radius: 5
        x: 360; y: 360
    }

    Pelivuoro{
        id: vuoro
    }

}
