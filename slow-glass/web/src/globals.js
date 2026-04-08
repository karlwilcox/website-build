
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
    static script_width = defaults.DISPLAY_WIDTH;
    static script_height = defaults.DISPLAY_HEIGHT;
    static script_scale_type = defaults.SCALE_NONE;
    static script_scale_x = 1;
    static script_scale_y = 1;
    static gravity = defaults.GRAVITY_PS2;
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