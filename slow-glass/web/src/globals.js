
import * as Utils from "./utils.js";
import defaults from "./defaults.js";

export class Globals {
    static root = null;
    static scenes = [];
    static app = null;
    static log = new Utils.Log(defaults.DEBUG);
    static current_trigger = "";
    static display_width = defaults.DISPLAY_WIDTH;
    static display_height = defaults.DISPLAY_HEIGHT;
    static lastKey = null;
    static key = null;

    constructor() {
    }

    static event(type, data) {
        switch (type) {
            case "onkeydown":
                Globals.lastKey = data;
                Globals.key = data;
                break;
            case "onkeyup":
                Globals.key = null;
                break;
                // others to add
        }
    }

}