async function main() {

    // Create application
    const app = new PIXI.Application();

    // Initialise renderer (Pixi v8 requirement)
    await app.init({
        resizeTo: window,
        background: "#303030"
    });

    // Add canvas to page
    document.body.appendChild(app.canvas);

    // Root container for scene
    const scene = new PIXI.Container();
    app.stage.addChild(scene);

    // Load assets
    const texture = await PIXI.Assets.load("assets/refuse-truck-rtol.png");

    // Create sprite
    const sprite = new PIXI.Sprite(texture);

    sprite.anchor.set(0.5);
    sprite.x = app.screen.width / 2;
    sprite.y = app.screen.height / 2;

    scene.addChild(sprite);

    // Animation loop
    app.ticker.add(() => {
        sprite.rotation += 0.01;
    });

    // Keep sprite centred when window resizes
    window.addEventListener("resize", () => {
        sprite.x = app.screen.width / 2;
        sprite.y = app.screen.height / 2;
    });
}

/* Can you give me a JavaScript function that takes as an argument a URL which
will be a text file on the server and provides as the return value an array of
strings, one for each line of the text file. can you also remove blank lines
and any lines which have # as the first non-blank character please */

async function readTextFileLines(url) {
    const response = await fetch(url);

    if (!response.ok) {
        throw new Error(`Failed to fetch file: ${response.status} ${response.statusText}`);
    }

    const text = await response.text();

    const lines = text
        .split(/\r?\n/)
        .map(line => line.trim())
        .filter(line => line.length > 0 && !line.startsWith('#'));

    return lines;
}

main();