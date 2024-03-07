const expext = @import("std").testing.expect;
fn addFive(x: u32) u32 {
    return x + 5;
}

test "function addFive adds five" {
    const y = addFive(0);
    try expext(@TypeOf(y) == u32);
    try expext(y == 5);
}

fn fibonacci(n: u16) u16 {
    if (n == 0 or n == 1) {
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

test "fibonacci recursion" {
    const x = fibonacci(10);
    try expext(x == 55);
    const y = fibonacci(1);
    try expext(y == 1);
}
