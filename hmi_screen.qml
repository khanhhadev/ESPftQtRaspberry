import QtQuick 2.12

Item {
    Row{
        Column {
            id: leftTool
            width: 80; height: 700
            Rectangle {
                id: home
                width: 80; height: 140
                color: "black"
                Item {
                    width: 30; height: 30
                    anchors.centerIn: parent
                    Image {
                        anchors.fill: parent
                        source: "qrc:/icon/home.png"
                        mipmap: true
                    }
                }
            }
            Rectangle {
                id: navigation
                width: 80; height: 140
                color: "black"
                Item {
                    width: 30; height: 30
                    anchors.centerIn: parent
                    Image {
                        anchors.fill: parent
                        source: "qrc:/icon/navigation.png"
                        mipmap: true
                    }
                }
            }
            Rectangle {
                id: music
                width: 80; height: 140
                color: "black"
                Item {
                    width: 30; height: 30
                    anchors.centerIn: parent
                    Image {
                        anchors.fill: parent
                        source: "qrc:/icon/music.png"
                        mipmap: true
                    }
                }
            }
            Rectangle {
                id: phone
                width: 80; height: 140
                color: "black"
                Item {
                    width: 30; height: 30
                    anchors.centerIn: parent
                    Image {
                        anchors.fill: parent
                        source: "qrc:/icon/phone.png"
                        mipmap: true
                    }
                }
            }
            Rectangle {
                id: setting
                width: 80; height: 140
                color: "black"
                Item {
                    width: 30; height: 30
                    anchors.centerIn: parent
                    Image {
                        anchors.fill: parent
                        source: "qrc:/icon/gear.png"
                        mipmap: true
                    }
                }
            }
        }
        Column {
            width: 920; height: 700
            Rectangle {
                id: entrance_SCR
                width: 920; height: 620
                color: "black"
                Image {
                    anchors.fill: parent
                    source: "qrc:/IMAGE/auto_overview.png"
                    mipmap: true
                }
            }
            Row {
                id: bottom_Tool
                width: 920; height: 80
                Rectangle {
                    id: heat
                    width: 184; height: 80
                    color: "black"
                    Item {
                        width: 30; height: 30
                        anchors.centerIn: parent
                        Image {
                            anchors.fill: parent
                            source: "qrc:/icon/heat.png"
                            mipmap: true
                        }
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            mainLoader.source = "qrc:/heat_screen.qml"
                            my_Animation.start()
                        }
                    }
                }
                Rectangle {
                    id: pressure
                    width: 184; height: 80
                    color: "black"
                    Item {
                        width: 30; height: 30
                        anchors.centerIn: parent
                        Image {
                            anchors.fill: parent
                            source: "qrc:/icon/pressure.png"
                            mipmap: true
                        }
                    }
                }
                Rectangle {
                    id: weather
                    width: 184; height: 80
                    color: "black"
                    Item {
                        width: 30; height: 30
                        anchors.centerIn: parent
                        Image {
                            anchors.fill: parent
                            source: "qrc:/icon/weather.png"
                            mipmap: true
                        }
                    }
                }
                Rectangle {
                    id: air
                    width: 184; height: 80
                    color: "black"
                    Item {
                        width: 30; height: 30
                        anchors.centerIn: parent
                        Image {
                            anchors.fill: parent
                            source: "qrc:/icon/air.png"
                            mipmap: true
                        }
                    }
                }
                Rectangle {
                    id: fuel
                    width: 184; height: 80
                    color: "black"
                    Item {
                        width: 30; height: 30
                        anchors.centerIn: parent
                        Image {
                            anchors.fill: parent
                            source: "qrc:/icon/fuel.png"
                            mipmap: true
                        }
                    }
                }

            }
        }
    }
}

