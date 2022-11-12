import QtQuick 2.12

Rectangle {
    width: 1000; height: 700
    color: "black"
    opacity: 0.75
    Item {
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: title_tempSystem.verticalCenter
        width: 30; height: 30
        Image {
            source: "qrc:/icon/undo.png"
            anchors.fill: parent
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    mainLoader.source = "qrc:/hmi_screen.qml"
                    my_Animation.start()
                }
            }
        }
    }

    Item {
        anchors.top: parent.top
        anchors.topMargin: 20
        id: title_tempSystem
        anchors.horizontalCenter: parent.horizontalCenter
        width: 75; height: 20
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("<b>Temperature Tracking System<b>")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "white"
            font.pixelSize: 25
        }
    }





    Rectangle{
        id: top_car
        width: 225; height: 350
        anchors.right: parent.right
        anchors.rightMargin: 100
        anchors.verticalCenter: parent.verticalCenter
        color: "transparent"
        //rotation: 180
        Image {
            id: auto_overviewLeft
            anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/IMAGE/top_car4.png"
            rotation: 180
        }
        Text {
            id: temp_fontleft
            anchors.right: top_car.left
            anchors.top: top_car.top
            anchors.topMargin: 75
            text: qsTr("<b>32.C<b>")
            color: "white"
            scale: mouse_temp_fontleft.containsMouse? 2:1
            MouseArea {
                id: mouse_temp_fontleft
                anchors.fill: parent
                hoverEnabled: true
            }
        }
        Text {
            id: temp_fontright
            anchors.left: top_car.right
            anchors.leftMargin: 15
            anchors.top: top_car.top
            anchors.topMargin: 75
            text: qsTr("<b>20.C<b>")
            color: "white"
            scale: mouse_temp_fontright.containsMouse? 2:1
            MouseArea {
                id: mouse_temp_fontright
                anchors.fill: parent
                hoverEnabled: true
            }
        }
        Text {
            id: temp_backleft
            anchors.right: top_car.left
            anchors.bottom: top_car.bottom
            anchors.bottomMargin: 75
            text: qsTr("<b>40.C<b>")
            color: "white"
            scale: mouse_temp_backleft.containsMouse? 2:1
            MouseArea {
                id: mouse_temp_backleft
                anchors.fill: parent
                hoverEnabled: true
            }
        }
        Text {
            id: temp_backright
            anchors.left: top_car.right
            anchors.leftMargin: 15
            anchors.bottom: top_car.bottom
            anchors.bottomMargin: 75
            text: qsTr("<b>25.C<b>")
            color: "white"
            scale: mouse_temp_backright.containsMouse? 2:1
            MouseArea {
                id: mouse_temp_backright
                anchors.fill: parent
                hoverEnabled: true
            }
        }
    }
    Column {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 100
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            Rectangle {
                width: 80; height: 80
                //radius: 40
                color: "transparent"
                Image {
                    id: cool
                    anchors.fill: parent
                    source: "qrc:/IMAGE/cool.jpg"
                }
            }
            spacing: 30
            Rectangle {
                width: 80; height: 80
                //radius: 40
                color: "transparent"
                Image {
                    id: hot
                    anchors.fill: parent
                    source: "qrc:/IMAGE/hot.png"
                }
            }
        }
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            Text{
                id: text_cool
                width: 75; height: 20
                text: qsTr("COOL")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }
            spacing: 30
            Text{
                id: text_hot
                width: 75; height: 20
                text: qsTr("HOT")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }
        }
        Item{
            id: valueDetail
            width: 350; height: 300
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                text: qsTr("29.C")
                width: 350; height: 300
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 100
                color: "white"
            }
        }
        Item {
            width: 350; height: 20
            anchors.horizontalCenter: parent.horizontalCenter
            Text{
                width: 350; height: 20
                id: temp_insideoutside
                text: qsTr("Current Temperature")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }
        }
        Item {
            width: 350; height: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            Text{
                id: temp_inside
                width: 75; height: 20
                text: qsTr("INSIDE")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }
            Text{
                id: temp_outside
                width: 75; height: 20
                text: qsTr("OUTSIDE")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }
        }

        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            Text{
                id: temp_insideValue
                width: 75; height: 30
                text: qsTr("22.C")
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"

            }
            Text{
                id: temp_outsideValue
                width: 75; height: 30
                text: qsTr("15.C")
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }
        }

    }
}
