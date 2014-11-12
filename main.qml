import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 360
    height: 360
    onHeightChanged: {
        console.log("Height : ", height)
    }

    Rectangle {
        id: game_world
        width: parent.width - 10
        height: parent.height - 10
        border.color: "#b91c0a"
        anchors.centerIn: parent
        border.width: 3
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#a99f9f" }
            GradientStop { position: 1.0; color: "#f8f8f8" }
        }

        Image {
            id: rocket
            source: "1415760797_run.png"
            x: (parent.width - width)/2
            y: parent.height/2 - height
        }

        Button {
            id: button
            x: 134
            y: 280
            text: "Hello"
            onClicked: {
                console.log("Button clicked")
                hello_message.text = "Button clicked"
            }
        }
        Text {
            id: hello_message
            y: rocket.y + rocket.height + 50
            text: "Space pressed " + spacePresses + " times"
            color: "#089633"
            font.family: "Fira Sans"
            font.pixelSize: 20
            style: Text.Sunken
            focus: true
            x: (parent.width - width)/2
            property int spacePresses: 0
            Keys.onSpacePressed: {
                spacePresses += 1
            }

            Keys.onEscapePressed:  {
                hello_message.text = ""
            }

            onTextChanged: {
                console.log("Text changed to : " + text)
            }
        }
    }
}
