import QtQuick 2.12

Rectangle {
    property bool turnleft_var: false
    property bool turnright_var: true
    id: background
    width: 1000; height: 700
    color: "black"

    Text {
        id: time
        width:  60; height: 28
        text: "15:35"
        color: "white"
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.left: subtract.left
        anchors.leftMargin: subtract.width/2 - 40 - time.width
        anchors.verticalCenter: weather.verticalCenter
    }

    Image {
        id: weather
        width: 20; height: 20
        source: "qrc:/icon/sunny.png"
        anchors.top: subtract.top
        anchors.topMargin: 20
        anchors.left: subtract.left
        anchors.leftMargin: subtract.width/2 + 60
    }
    Image {
        width: 1000; height: 400
        id: subtract
        anchors.centerIn: parent.Center
        source: "qrc:/icon/Subtract.png"
    }
    Image {
        id: group2
        width: 400; height: 300
        source: "qrc:/icon/group2.png"
        anchors.left: parent.left
        anchors.verticalCenter: subtract.verticalCenter
    }

    Row {
        id: rowLight
        spacing: 20
        anchors.bottom: speed.top
        anchors.topMargin: 20
        anchors.horizontalCenter: speed.horizontalCenter

        Image {
            id: turnLeft
            width: 20; height: 20
            source: turnleft_var? "qrc:/icon/turnLeftOn.png" : "qrc:/icon/turnRight.png"
            rotation: turnleft_var? 0 : 180
            opacity: turnleft_var? 1 : 0.5
        }
        Image {
            id: light
            width: 20; height: 20
            source: "qrc:/icon/light.png"
            opacity: 0.5
        }
        Image {
            id: furtherlight
            width: 20; height: 20
            source: "qrc:/icon/furtherlight.png"
            opacity: 0.5
        }
        Image {
            id: turnRight
            width: 20; height: 20
            source: turnright_var? "qrc:/icon/turnLeftOn.png" : "qrc:/icon/turnRight.png"
            rotation: turnright_var? 180 : 0
            opacity: turnright_var? 1 : 0.5
        }
    }

    Text {
        id: speed
        width: 130; height: 130
        font.pixelSize: 130
        text: "00"
        color: "lightgrey"
        font.family: "Montserrat Alternates"
        anchors.horizontalCenter: subtract.horizontalCenter
        anchors.top: subtract.top
        anchors.topMargin: 100
        horizontalAlignment: Text.AlignHCenter
    }
    Text {
        id: speedUnit
        width: 60; height: 28
        font.pixelSize: 18
        text: "km/h"
        color: "darkgrey"
        opacity: 0.5
        font.family: "Montserrat Alternates"
        anchors.horizontalCenter: speed.horizontalCenter
        anchors.top: speed.bottom
        horizontalAlignment: Text.AlignHCenter
    }

    Image {
        id: group4
        width: 400; height: 300
        source: "qrc:/icon/group4.png"
        anchors.right: parent.right
        anchors.verticalCenter: subtract.verticalCenter
    }

    Image {
        id: union
        source: "qrc:/icon/Union.png"
        width: 800; height: 100
        anchors.bottom: subtract.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: total
        width: 60; height: 28
        text: " Total: 00000km"
        font.pixelSize: 18
        color: "darkgrey"
        opacity: 0.5
        anchors.top: union.top
        anchors.topMargin: 30
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: speed.horizontalCenter
    }

    Row {
        spacing: 10
        anchors.bottom: subtract.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            width: 12; height: 21
            text: "E"
            color: "grey"
            font.pixelSize: 18
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
        }

        Image {
            id: line1
            width: 500; height: 5
            source: "qrc:/icon/line1.png"
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            width: 12; height: 21
            text: "100%"
            color: "lightgreen"
            font.pixelSize: 18
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
        }
    }


}
