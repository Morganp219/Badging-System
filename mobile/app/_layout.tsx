import { Slot, Stack } from "expo-router";
import React from "react";

import { tokenCache } from '@clerk/expo/token-cache'
import {ClerkProvider} from "@clerk/expo"
import { ThemeProvider } from "@joe111/neo-ui";


const publishableKey = process.env.EXPO_PUBLIC_CLERK_PUBLISHABLE_KEY!

if (!publishableKey) {
  throw new Error('Add your Clerk Publishable Key to the .env file')
}


export default function RootLayout() {
  return (
    <ThemeProvider>
        <ClerkProvider publishableKey={publishableKey} tokenCache={tokenCache}>
        <Slot />
      </ClerkProvider>
    </ThemeProvider>
  );
}
