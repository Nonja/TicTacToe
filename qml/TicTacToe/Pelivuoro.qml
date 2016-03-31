import QtQuick 2.0

Rectangle{
    id: vuoro
    width: 30; height: 30
    color: "orange"
    radius: 5
    x: 40; y: 360

    property bool trigger: false

    states: [
        State {
            name: "TOKA"
            PropertyChanges {
                target: vuoro
                x: 330; y: 360

            }
        },
        State {
            name: "EKA"
            PropertyChanges {
                target: vuoro
                x: 40; y: 360

            }
        },
        State {
            name: "voitto"
            PropertyChanges {
                target: vuoro
                x: 47; y: 47
                width: 310
                height: 310



            }
        }
    ]
    transitions: [
        Transition {
            NumberAnimation{
                properties: "x"
                easing.type: Easing.InBack
                duration: 500
            }
        },
        Transition {
            from: "EKA"
            to: "voitto"
            NumberAnimation{
                properties: "x, y"
                easing.type: Easing.InBack
                duration: 1000
            }
        },
        Transition {
            to: "voitto"
            SequentialAnimation{
                NumberAnimation{
                    properties: "x, y"
                    easing.type: Easing.InBack
                    duration: 1000
                }
                NumberAnimation{
                    properties: "width, height"
                    easing.type: Easing.InBack
                    duration: 1000
                }
            }
        }

    ]

}
