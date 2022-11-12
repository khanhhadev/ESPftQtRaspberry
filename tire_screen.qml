import QtQuick 2.15

Item {
    Rectangle{
        id: background
        width: 1000; height: 700
        color: "black"
            Image {
                id: auto_overviewLeft
                anchors.fill: parent
                source: "qrc:/IMAGE/auto_ahead.png"
            }
    }
    Rectangle {
        id: tire
        width: 300; height: 300
        color: "transparent"
        anchors.bottom: background.bottom
        anchors.right: background.right
        Image {

            anchors.fill: parent
            source: "qrc:/IMAGE/tire.png"
        }
    }
}
