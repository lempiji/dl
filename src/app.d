import core.thread;
import std.getopt;
import std.stdio;

import dl.common;
import dl.data;

enum USAGE = `
USAGE: dl [<options...>]

Options:
    --help
        Print this help
    --large
        Improve the correction effect
    --width=n
        Set the width of screen. The default is 80.
`;

void main(string[] args)
{
    bool useLarge = false;
    size_t screenWidth = 80;

    auto getoptResult = getopt(args,
        config.passThrough,
        "large", &useLarge,
        "width", &screenWidth
    );

    if (getoptResult.helpWanted)
    {
        writeln(USAGE);
        return;
    }

    auto data = useLarge ? DMAN_LARGE : DMAN_SIMPLE;
    auto frames = data.length;

    foreach (i; 0 .. screenWidth + 20)
    {
        cls();
        print(data[i / 6 % frames], i, screenWidth);
        Thread.sleep(20.msecs);
    }
    cls();
    locate(0, 0);
}
