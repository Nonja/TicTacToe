import QtQuick 2.0
import "Voittaja.js" as Peli

Rectangle{
    id: rect
    width: 100; height: 100
    color: mousearea.pressed ? "orange" : "white"
    radius: 5
    states:[
        State {
            name: "EKA"
            PropertyChanges {
                target: rect
                color: "darkmagenta"
            }
        },
        State {
            name: "TOKA"
            PropertyChanges {
                target: rect
                color: "darkgreen"
            }
        },
        State {
            name: ""
        }

    ]
    transitions: [
        Transition {
            ColorAnimation { from: "orange"; duration: 300 }
        }
    ]

    MouseArea {
        id: mousearea
        anchors.fill: rect
        onClicked: {
            while (rect.state == ""){
                if (lauta.pelaaja == "EKA") {
                    rect.state = "TOKA";
                    vuoro.state = "EKA";
                    lauta.pelaaja = "TOKA";

                    console.log(rect.state);
                } else {
                    rect.state = "EKA";
                    vuoro.state = "TOKA";
                    lauta.pelaaja = "EKA";

                    console.log(rect.state);
                }

                if (Peli.tarkistus(true)) {

                    console.log("VOITTO");
                    vuoro.state = "voitto";
                    lauta.state = "loppu";



                }
            }
        }
    }
}
