import * as React from "react";

type ButtonProps = JSX.IntrinsicElements["button"] & {
  content: string | number;
};

export const Button: React.FC<ButtonProps> = ({ content, ...props }) => {
  return <button {...props}>{content}</button>;
};
