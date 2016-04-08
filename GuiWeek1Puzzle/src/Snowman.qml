import QtQuick 2.0

Rectangle{
    id:snowman
    height: 400
    width: 300
    visible: true
    color: "transparent"


    Rectangle {
        id: bottom
        x: 25
        y: 167
        width: 150
        height: 150
        color: "white"
        radius: 75
        border.color: "black"
        visible: true
        border.width: 4
    }

    Rectangle {
        id: middle
        x: 45
        y: 115
        width: 110
        height: 110
        color: "white"
        radius: 55
        border.color: "black"
        visible: true
        border.width: 4
    }

    Rectangle{
        id:head
        height:80
        width: 80
        x: 60
        y: 60
        visible: true
        color: "white"
        border.color: "black"
        border.width: 4
        radius: 60

    }

    Image{
        id: hat
        width:50
        x: 60
        y: 30
        fillMode: Image.PreserveAspectFit
        source: "../img/hat.png"
    }
    Image{
        id: nose
        x: 120
        y: 84
        width: 20
        height: 50
        rotation: -88
        fillMode: Image.PreserveAspectCrop
        source: "../img/carrot.png"
    }

    Rectangle {
        id: l_eye
        x: 73
        y: 84
        width: 20
        height: 20
        color: "black"
        radius: 10

        visible: true

    }

    Rectangle {
        id: r_eye
        x: 104
        y: 76
        width: 20
        height: 20
        color: "black"
        radius: 10

        visible: true

    }

}

