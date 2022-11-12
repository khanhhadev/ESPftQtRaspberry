import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: my_window
    width: 1000
    height: 700
    visible: true
    title: qsTr("Do an 23 10 2022")

    Rectangle{
        width: 1000; height: 700
        color: "black"
        Image {
            id: auto_overviewLeft
            anchors.fill: parent
            source: "qrc:/IMAGE/auto_overview.png"
        }
    }
   Loader {
       id: mainLoader
       source: "distance_screen.qml"
       PropertyAnimation {
           id: my_Animation
           target: mainLoader
           property: "opacity"
           from: 0
           to: 1
           duration: 2000
       }
   }
}
