import type { Metadata } from "next";
import "./globals.css";
import { Inter } from 'next/font/google';
import Navbar from '@/components/navbar/Navbar';
const inter = Inter({ subsets: ['latin'] });


export const metadata: Metadata = {
  title: "Home Away",
  description: "Feel at home, away from home.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <Navbar />
        <main className='container px-10'>
          {children}
        </main>
      </body>
    </html>
  );
}
