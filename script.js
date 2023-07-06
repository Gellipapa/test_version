const a = {};

function test(  a, b   ) {
    if (  a || b  ) {
        return b;
    }

    return a;
}
