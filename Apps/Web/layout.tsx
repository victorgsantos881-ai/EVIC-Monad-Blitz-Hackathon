export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body style={{ margin: 0, background: "#FFFFFF", color: "#0B0B0B" }}>
        {children}
      </body>
    </html>
  );
}
