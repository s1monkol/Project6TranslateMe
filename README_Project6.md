# Project 6 - TranslateMe

Submitted by: **Semen Kolesnykov**

**TranslateMe** is an iOS app that allows users to translate text from English to Italian using the MyMemory Translation API. The app includes basic error handling and maintains a translation history for the user.

Time spent: **7 hours** in total

---

## ✅ Required Features

The following **required** functionality is completed:

- [x] App launches to a TranslateMe home screen with:
  - [x] A text input field for users to enter a word, phrase, or sentence.
  - [x] A "Translate" button.
  - [x] A second field to display the translated result.
- [x] When users tap "Translate", the app calls the translation API and shows the translated text in the lower field.
- [x] The app maintains a scrollable history of past translations.
- [x] Users can erase the translation history using a clear/reset button.

---

## ✨ Optional Features

The following **optional** features are implemented:

- [x] Error message is shown if the API call fails (e.g., network issue or server error).

---

## 💡 Additional Features

- [x] Used URLSession to fetch API data with proper encoding/decoding.
- [x] Handled edge cases where API fails or input is empty.

---

## 🎥 App Walkthrough

> **Note:** Due to technical limitations in the FIU library (outdated iMacs, no ability to install screen recording software, and 95% simulator failure rates), I was unable to record a traditional walkthrough video.  
>  
> Instead, I have uploaded a GIF demo of the core features to demonstrate the app’s functionality.

![Walkthrough](translateMe.gif)

---

## 📝 Notes

- The biggest challenge was working with the API response format and ensuring fallback behavior on failure.
- I originally planned to add multi-language support and Firebase integration, but prioritized stability of the base features due to limited hardware access and development time.

---

## 📜 License

    Copyright 2025 Semen Kolesnykov

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.