# Project4-The-Beautiful-Game

# Screenshots

[![Screen_Shot_2017-11-20_at_10.31.10_PM.png](https://s17.postimg.org/qocmp5frj/Screen_Shot_2017-11-20_at_10.31.10_PM.png)](https://postimg.org/image/4p681xyx7/)

[![Screenshot_1.png](https://s17.postimg.org/9b2cabn1b/Screenshot_1.png)](https://postimg.org/image/y4bwaz61n/)

[![Screen_Shot_2017-11-20_at_10.43.46_PM.png](https://s17.postimg.org/a0l4mpaq7/Screen_Shot_2017-11-20_at_10.43.46_PM.png)](https://postimg.org/image/t5odwgpe3/)

# Heroku App
Will be added shortly...

# Github Repo

https://github.com/rowindatas25/Project4-The-Beautiful-Game

# Technologies Used

Ruby on Rails
This entire app was made in Ruby. There were multiple controllers and models set up, one each for teams, profiles and users.
Ruby's routes in the backend were quick and the ability to run a for each loop through everything in the views made it easier to style the app.
Javascript
Used javascript with the youtube iFrame they have in order to implenent it by splitting arrays along with some javascript in the views which dictates when a user can see their favorite moment or not based on whether they've input something into their profile. 
HTML
HTML was used in the views along with the "squid" and "flounder" tags to render data as well as write code within my html files as well. 
Flexbox CSS
Flexbox allowed for the app to display all 98 divs and more by providing a tremendous amount of flexability to the elements on the page. It also made it easier to incorporate the Iframe player from youtube.
HTTParty
HTTParty was initially used to provide most of the soccer data that I had, it provided the names for all the teams from the five major sports leagues across Europe.
Sports Open Data API
This was the API that provided at least the data of all the team names and some of the dates that they were founded as well as some team colors as well.
Youtube API
Used the youtube API iFrame player to insert a specfic ID into each show page for a specific team with a moment/video from Youtube.


# Approach
My approach to start things off was pretty good. I felt like I had a good plan and I was excited to execute what I had laid out. However, I learned that I probably could have planned things out even more. The more structured and organized things are on the backend the easier things will be on the front end, but I ended up having to go back multiple times to change column names and add certain parameters to make things work.

Getting CRUD to work took longer than expected but once that was sorted I moved to the profile pages over the weekend and was able to create a profile page for each user where they can save their favorite teams and moments. Once that was complete, I attempted to implement the Youtube player into the project and I was only able to display one video for the same show page. Since that wasn't working, I began to style for the rest of the weekend until I had the chance to come in on Monday and ask for help. 

The youtube iframe player was a challenge for me but Tims was very helpful in guiding me on the right path. I was originally going to attempt a regex method that I wouldn't have really understood. Tims suggested it would be better to attempt it by using split and last to pull the youtube id from the url and it worked out great in the end! 

After that it was about finalizing everything, making sure everything was functioning correctly and that everything looked good.






# User Stories
As a user I want to be able to relive my favorite moments as a soccer fan and watch some historic soccer moments.
As a user I want to be able to add, edit, save or delete my favorite teams from my profile,
As a user I want to be able to check the accomplishments and rosters of my favorite teams whenever I choose.
As a user I want a nice, clean interface that is easy to use and maneuver.

# Wireframes
https://git.generalassemb.ly/storage/user/7642/files/e508e55a-c8a2-11e7-9382-7b9b86b716c5

# Challenges
There were plenty of challenges and road blocks along the way. I underestimated the amount of time it would take to implement CRUD while using an HTTParty call along with it. There were issues with rendering the data on many occassions early on and it was difficult to set profile pages up. The biggest challenge was using the youtube iframe player but that ended up being successful.

Had plenty of issues trying to deploy on Heroku for Ruby, it was frustrating.



