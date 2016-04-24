import QtQuick 2.6
import QtQuick.Controls 1.5
import Qt.labs.settings 1.0


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Traffic Light")



    Settings
    {
        id: settings_global
        property int index


    }



    Rectangle
    {
        id: big_wrapper
        anchors.fill: parent

        Timer
        {
           id: light_time
           repeat: true
           running: true
           triggeredOnStart: true
           onTriggered:
           {

                TrafficLight.toggle_light(settings_global.index++%3)
           }
        }

        Rectangle
        {
            id: rect_traffic_light_head
            anchors.horizontalCenter: big_wrapper.horizontalCenter
            anchors.verticalCenter: big_wrapper.verticalCenter

            height: parent.height * .9;
            width: parent.width/3;
            border.color: "brown"



            Rectangle
            {
                id: rect_red_light
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100;
                width: 100;
                radius: width/2;
                border.width: 10
                border.color: "black"
                color: "black"


            }

            Rectangle
            {
                id: rect_yellow_light
                anchors.top: rect_red_light.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100;
                width: 100;
                radius: width/2;
                border.width: 10
                border.color: "black"
                color: "black"
            }

            Rectangle
            {
                id: rect_green_light
                anchors.top: rect_yellow_light.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100;
                width: 100;
                radius: width/2;
                border.color: "black"
                border.width: 10
                color: "black"
            }

            Connections
            {
                target: light_time
                onTriggered:
                {
                    if(TrafficLight.get_light_on(0))
                    {
                        rect_red_light.color = "red"
                        rect_green_light.color = "black"
                    }
                    else if(TrafficLight.get_light_on(1))
                    {
                        rect_red_light.color = "black"
                        rect_yellow_light.color = "yellow"
                    }
                    else
                    {
                        rect_yellow_light.color = "black"
                        rect_green_light.color = "green"
                    }
                }
            }
        }

    }
}
