import QtQuick 2.12

Row {
    Column {
        id: leftTool
        anchors.left: parent.left
        anchors.top: parent.top
        Rectangle {
            width: 55; height: 700
            anchors.centerIn: parent
            border.color: "red"
            Rectangle {
                id: home
                width: 50; height: home.width
                border.color: "orange"
            }
            Rectangle {
                id: navigation
                width: 50; height: home.width
                border.color: "orange"
            }
            Rectangle {
                id: music
                width: 50; height: home.width
                border.color: "orange"
            }
            Rectangle {
                id: phone
                width: home.width; height: home.height
                border.color: "orange"
            }
            Rectangle {
                id: setting
                width: home.width; height: home.height
                border.color: "orange"
            }
        }
    }
}
