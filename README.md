# Project 1 - Flix

Flix is a movies app using the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: 10 hours spent in total

## User Stories

The following **required** user stories are complete:

- [x] User sees app icon in home screen and styled launch screen (+1pt)
- [x] User can scroll through a list of movies currently playing in theaters from The Movie DB API (+5pt)
- [x] User can "Pull to refresh" the movie list (+2pt)
- [x] User sees a loading state while waiting for the movies to load (+2pt)

The following **optional** user stories are implemented:

- [ ] User sees an alert when there's a networking error (+1pt)
- [ ] User can search for a movie (+3pt)
- [ ] While poster is being fetched, user see's a placeholder image (+1pt)
- [ ] User sees image transition for images coming from network, not when it is loaded from cache (+1pt)
- [ ] Customize the selection effect of the cell (+1pt)
- [ ] For the large poster, load the low resolution image first and then switch to the high resolution image when complete (+2pt)

The following **additional** user stories are implemented:

- [x] Added in Stars so users can see the rating of the movies on the list screen

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Why refresh control's .endRefreshing( ) was not originally called within the didRefresh( ) after fetchMovies( )
2. How to properly manage tasks when you are making multiple requests for information

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/03QaptG.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.


# Project 2 - Flix

Flix is a movies app displaying box office and top rental DVDs using [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: 8 hours spent in total

## User Stories

The following **required** functionality is completed:

- [X] User can tap a cell to see a detail view (+5pts)
- [X] User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView (+5pts)

The following **optional** features are implemented:

- [X] User can tap a poster in the collection view to see a detail screen of that movie (+3pts)
- [ ] In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer (+3pts)
- [X] Customize the navigation bar (+1pt)
- [ ] List in any optionals you didn't finish from last week (+1-3pts)

The following **additional** features are implemented:

- [X] Prevented the tabbar from showing up whenever the user navigates to the details page

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. How to set up more custom collection views and horizontal scrolling
2. How hiding the tabbar can prevent awkward view flow

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/6eQt9Nk.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

# Lab 3 - Flix

Flix is a movies app displaying box office and top rental DVDs using [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: 7 hours spent in total

## User Stories

The following **required** user stories are complete:

- The following screens use AutoLayout to adapt to various orientations and screen sizes
- [x] Movie feed view (+3pt)
- [x] Detail view (+2pt)

The following **optional** user stories are implemented:

- [ ] Dynamic Height Cells (+1)
- [x] Collection View AutoLayout (+2)

The following **additional** user stories are implemented:

- [ ] List anything else that you can get done to improve the app functionality! (+1-3pts)

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. How to make vertical allignment on labels more easily
2. How to detect orientation of the screen easily in code to allow for managing sizing of items when in a different orientation

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/gI6gwK5.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

# Lab 5 - Flix

Flix is a movies app displaying box office and top rental DVDs using [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: 5 hours spent in total

## User Stories

The following **required** user stories are complete:

- [x] Create a movie model (+2pt)
- [x] Implement the movie model (+2pt)
- [x] Implement property observers (+2pt)
- [x] Create a basic API Client (+2pt)

The following **additional** user stories are implemented:

- [x] Modified Tab bar colors to better match the theme
- [x] Also added property observer to the PosterCell class

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Deeper understanding of URLSessions would be nice
2. Where else to go from here with Movie app

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/SX3nHOV.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I would point out in explaining the APIManager that AlamoFire is needed

## License

    Copyright 2018 Brendan Raftery

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    
    
