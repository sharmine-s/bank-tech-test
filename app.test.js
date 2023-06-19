const app = require("./app");

describe("Bank Tech Test", () => {
  it("checking if jest works", () => {
    const logSpy = jest.spyOn(console, "log");

    app();

    expect(logSpy).toHaveBeenCalledWith("hello");
  });
});
