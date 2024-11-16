import type { Metadata } from "next";
import "./globals.css";
import { Inter } from 'next/font/google';
import Navbar from '@/components/navbar/Navbar';
import Providers from './providers';
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
    <html lang="en" suppressHydrationWarning>
      <body className={inter.className}>
        <Providers>
          <Navbar />
          <main className='container px-10'>
            {children}
          </main>
        </Providers>
      </body>
    </html>
  );
}
