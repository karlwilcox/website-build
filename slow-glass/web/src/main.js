/* Imports */
import { Scene } from "./scene.js";
import Defaults from "./defaults.js";
import { Globals } from "./globals.js";
import { AudioManager } from "./audio.js";

// Create application
const start_time = Date.now();
let next_action_run = 0;
let next_sprite_update = 0;

async function run() {

    // Initialise renderer (Pixi v8 requirement)
    await Globals.app.init({
        // resizeTo: window,
        background: "#dfdfdf",
        width: Globals.display_width,
        height: Globals.display_height,
    });

    // Add canvas to page
    document.onkeydown = function(e) {Globals.event("onkeydown", e.key);};
    document.onkeyup = function(e) {Globals.event("onkeyup", e.key);};
    pixi.appendChild(Globals.app.canvas);

    // Root container for scene
    Globals.root = new PIXI.Container();
    Globals.app.stage.addChild(Globals.root);

    // Main loop
    Globals.app.ticker.add(update);

    // Keep sprite centred when window resizes
    window.addEventListener("resize", () => {
    });
}

function update(ticker) {
    // Action granularity is only 1 second, so only update every 0.5 seconds
    // (to ensure we catch triggers that are accurate to 1 second, e.g. "at"
    // Could adjust this if needed in defaults
    let current_millis = Date.now();
    if (next_action_run < current_millis) {
        if (Globals.app.screen.width != Globals.display_width) {
            Globals.app.screen.width = Globals.display_width;
        }
        if (Globals.app.screen.height != Globals.display_height) {
            Globals.app.screen.height = Globals.display_height;
        }
        for ( let i = 0; i < Globals.scenes.length; i++ ) {
            current = Globals.scenes[i];
            if (!current.enabled) {
                continue;
            }
            // First let's see if any local timers have expired
            for (let j = 0; j < current.timers.length; j++ ) {
                if (current.timers[j].expired(current_millis)) {
                    current.timers.splice(j,1);
                }
            }
            // this implements the any/all condition. It is set by looking
            // at each trigger in turn. If the when condition is "any"
            // we immediately break out of the loop and run actions
            // If when is "all" we break out of the loop as soon as a
            // trigger fails. Hence the only way to get out of the loop
            // with do_run set to true is for all the tirggers to succeed
            // Found an active scene, now go through each action group
            for ( let j = 0; j < current.actionGroups.length; j++ ) {
                let do_run = false;
                // check each trigger, if ANY is valid then execute actions
                triggers = current.actionGroups[j].triggers;
                for ( let k = 0; k < triggers.length; k++) {
                    if (triggers[k].fired(current_millis)) {
                        // console.log("Firing on " + triggers[k].constructor.name);
                        current.varList.trigger = triggers[k].constructor.name;
                        do_run = true;
                        if (current.actionGroups[j].any_trigger) {
                            break;
                        }
                    } else {
                        do_run = false;
                        if (!current.actionGroups[j].any_trigger) {
                            break;
                        }
                    }
                }
                if (do_run) {
                    current.run_actions(j, current_millis);
                }
            }
        }
        next_action_run = current_millis + Defaults.TRIGGER_RATE;
    }
    // But sprites can be updated up to every frame if we want...
    if (next_sprite_update < current_millis) {
        for ( let i = 0; i < Globals.scenes.length; i++ ) {
            current = Globals.scenes[i];
            if (!current.enabled) {
                continue;
            }
            // Found an active scene, now go through each sprite
            for ( let j = 0; j < current.sprites.length; j++ ) {
                current.sprites[j].update(current.name, current_millis);
            }
        }
        next_sprite_update = current_millis + Defaults.SPRITE_RATE;
    }
}

async function readScriptFromFile(url) {
    Globals.log.debug("Starting Slow Glass from " + window.sg_filename );
    const response = await fetch(url);
    if (!response.ok) {
        Globals.log.error(`Failed to fetch file: ${response.status} ${response.statusText}`);
    }
    const text = await response.text();
    Scene.readFromText(text);
    run();
}

function readScriptFromText() {
    Globals.log.debug("Starting Slow Glass from textarea");
    // tidy up previous run
    const pixi = document.getElementById("pixi");
    Globals.scenes = [];
    AudioManager.deleteAll();
    if (pixi.hasChildNodes()) {
        pixi.removeChild(pixi.firstChild);
    }
    Scene.readFromText(document.getElementById("sg-script").value);
    run();
}

function main() {
    Globals.app = new PIXI.Application();
    // set
    document.getElementById("run_button").addEventListener("click",readScriptFromText);
    document.getElementById("stop_button").addEventListener("click",Globals.app.stop);
    if (window.sg_filename) {
        readScriptFromFile(window.sg_filename);
    }  // else just wait for a button
}

main();



