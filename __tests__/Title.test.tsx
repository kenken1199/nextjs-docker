import React from "react";
import { render, screen } from "@testing-library/react";
import "@testing-library/jest-dom";
import Title from "@/app/components/Title";

describe("Title component", () => {
  it("タイトルがあること", () => {
    render(<Title />);
    const title = screen.getByTestId("title");
    expect(title).toHaveTextContent("Hello Jest");
  });
});
