const std = @import("std");
const expect = std.testing.expect;
const a = [_]u8{ 1, 2, 3 };
const b = [5]u8{ 3, 2, 1 };

test "Inferred length" {
    try expect(a.len == 3);
}
test "actual length can be less than allocted" {
    try expect(b.len == 3);
}
