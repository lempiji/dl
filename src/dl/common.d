module dl.common;

import std.stdio;
import std.string;
import std.algorithm;

void cls()
{
    write("\x1b[2J");
}

void locate(size_t x, size_t y)
{
    writef("\033[%d;%dH", y, x);
}

void print(string text, size_t offset, size_t screenWidth)
{
    foreach (idx, line; text.splitLines())
    {
        if (offset + line.length > screenWidth)
        {
            if (offset < screenWidth)
            {
                locate(offset, idx + 2);
                write(line[0 .. min(screenWidth - offset, $)]);
            }
        }
        else
        {
            locate(offset, idx + 2);
            write(line);
        }
    }
    stdout.flush();
}