//@Author- rpslive

package inet.examples.wireless.handover;

import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
import inet.nodes.inet.WirelessHost;
import inet.nodes.wireless.AccessPoint;
import inet.world.radio.ChannelControl;
import inet.nodes.ethernet.Eth100M;


network HandoverNetwork
{
    parameters:
    submodules:
        host: WirelessHost {
	    @display("i=device/train_s");
	    @display("p=150,250;r=,,#707070");
        }
        ap1: AccessPoint {
	    @display("i=device/antennatower_vl");
            @display("p=100,400;r=,,#707070");
        }
        ap2: AccessPoint {
            @display("i=device/antennatower_vl");
	    @display("p=500,400;r=,,#707070");
        }
	ap3: AccessPoint {
            @display("i=device/antennatower_vl");
	    @display("p=900,400;r=,,#707070");
        }
	ap4: AccessPoint {
            @display("i=device/antennatower_vl");
	    @display("p=1300,400;r=,,#707070");
        }
	channelControl: ChannelControl {
            @display("p=950,0");
        }
        configurator: IPv4NetworkConfigurator {
            @display("p=700,0");
        }
	connections:
        ap1.ethg++ <--> Eth100M <--> ap2.ethg++;
        ap2.ethg++ <--> Eth100M <--> ap3.ethg++;
		ap3.ethg++ <--> Eth100M <--> ap4.ethg++;
        
}

