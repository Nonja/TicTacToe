import QtQuick 2.0

Grid {
    id: lauta
    columns: 3
    spacing: 3

    property string pelaaja

    Repeater{
        model: 9
        Peliruutu{
            id:rect
        }
    }

    states: [
        State {
            name: "loppu"
            PropertyChanges {
                target: lauta
                visible: false

            }
        }
    ]
    transitions: [
        Transition {
            PropertyAnimation {
                properties: "visible"
                target: lauta
                duration: 2000

            }

        }
    ]
    anchors.centerIn: parent
}
