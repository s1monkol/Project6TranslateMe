# Project 6 - TranslateMe

Submitted by: **Semen Kolesnykov**

**TranslateMe** is an app that allows users to translate phrases from English to Italian using the MyMemory Translation API. It also stores translation history and allows clearing it.

Time spent: **5** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] Users open the app to a TranslateMe home page with a place to enter a word, phrase or sentence, a button to translate, and another field that should initially be empty  
- [x] When users tap translate, the word written in the upper field translates in the lower field.  
- [x] A history of translations can be stored (in a scroll view in the same screen)  
- [x] The history of translations can be erased

## Optional Features

The following **optional** features are implemented:

- [ ] Add a variety of choices for the languages  
- [ ] Add UI flair  

## Additional Features

The following **additional** features are implemented:

- [x] Error handling for failed API calls (e.g. shows "Translation failed" if API doesn't respond)

## Video Walkthrough

Here's a walkthrough of implemented user stories:

> [Embed Loom video here]

## Notes

One issue I encountered was that the translation API sometimes fails to respond, so I had to add error handling logic. Additionally, I explored Firebase integration but focused the final version on making the API translation + history stable.

## License

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
