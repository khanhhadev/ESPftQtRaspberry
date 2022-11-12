import QtQuick 2.12

Rectangle{
    width: 1000; height: 700
    color: "black"
    Rectangle {
        id: crashcaution
        width: 400; height: 200
        color: "black"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.color: "red"
        radius: 8
        Row {
            spacing: 30
            Image {
                width:  100; height: 100
                source: "qrc:/icon/carCrash.png"
                //mipmap: true
                anchors.verticalCenter: parent.verticalCenter
            }
            Column {
                anchors.verticalCenter: parent.verticalCenter
                Image {
                    id: iconCaution
                    width: 50; height: 50
                    source: "qrc:/icon/caution.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: cautionContent
                    text: qsTr("Caution!")
                    color: "red"
                    font.pixelSize: 50
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: cautionContent2
                    text: qsTr("Car Crash")
                    color: "white"
                    font.pixelSize: 50
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
