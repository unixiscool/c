const std = @import("std");
const Point = struct {
    x: u32,
    y: u32,
};
pub fn main() !void {
    const point = Point {
        .x = 128,
        .y = 256,
    };
    std.log.info("{}", .{point});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
