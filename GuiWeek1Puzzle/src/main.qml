import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    height: 500
    property alias snowman1: snowman1
    width: 700
    Image{
        anchors.fill: parent
        source:"../img/Background.png"
    }
    Snowman{
        id: snowman1

        anchors.leftMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }


}

