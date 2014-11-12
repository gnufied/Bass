import QtQuick 2.0

Rectangle {
    id: root
    width: 100
    height: 62
    color: "#5b1b1b"
    property alias text: label.text
    signal clicked

    Text {
        id: label
        color: "#f2cdcd"
        anchors.centerIn: parent
        text: "Push Button"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: { root.clicked() }
    }
}

