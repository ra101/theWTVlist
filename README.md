<div align="center">


<p align="center">
    <img src="./includes/logo.png">
   <br> 
    The Web-TV-Series List
  <br>
</p>

The website is hosted on [infinityfree.net](http://thewtvlist.epizy.com/) (Do check out Adv Search.)



![Made with PHP](https://img.shields.io/badge/Made%20with-php-8993BE?style=for-the-badge&logo=php) [![Issues](https://img.shields.io/github/issues/ra101/theWTVlist?style=for-the-badge)](https://github.com/ra101/theWTVlist/issues) [![Forks](https://img.shields.io/github/forks/ra101/theWTVlist?style=for-the-badge)](https://github.com/ra101/theWTVlist/network/members) [![Stars](https://img.shields.io/github/stars/ra101/theWTVlist?style=for-the-badge)](https://github.com/ra101/theWTVlist/stargazers) ![Maintained](https://img.shields.io/maintenance/no/2018?style=for-the-badge&logo=github)  ![Open Source](https://img.shields.io/badge/Open%20Source-gray?style=for-the-badge&logo=open-source-initiative)


</div>


## Index

- [Index](#index)
- [About](#about)
  - [Goal](#goal)
  - [Database](#database)
- [Gallery](#gallery)
- [Donations](#Donations)
- [Credit/Acknowledgment](#creditacknowledgment)
- [License](License)
- [Chat](Chat)

## About

This is Entertainment(Web TV Series)-Cataloging website, with advance search options using SQL queries. The project is heavily-inspired by [myanimelist.net](https://myanimelist.net/) , This is database and PHP project rather than a front-end project.

### Goal

The end product is simple, A user can choose a from a good list of Web Series and rate according to xer preferences, and also can mark it as "Currently Watching"/"Completed"/"On-hold"/"Plan To Watch"/"Dropped" and/or as Favorite. A User can have upto 3 favorite series and can give one review per series. Further the user can edit xer review and change the mark accordingly. 

Search Queries can be adjusted to almost every specific detail.

### Database

Below are the tables required for this project.

Legend:

- Sid: Series Id
- Sname: Name of the Series
- ytbCode: youtube code for trailer
- Uid: User Id
- others: self-explainatory

#### slist (List of Web-Series):

| Sid                       | Sname                      | coverImg                   | noOfSeason              | totalNoOfEp               | network                    | ytbCode                    | rating                      | date                       | producer                   | director                   | country                    | lang                       | description                | members                   | favCount                  | users                     |
| ------------------------- | -------------------------- | -------------------------- | ------------------------- | ------------------------- | -------------------------- | -------------------------- | --------------------------- | -------------------------- | -------------------------- | -------------------------- | -------------------------- | -------------------------- | -------------------------- | ------------------------- | ------------------------- | ------------------------- |
| <p align="center">INT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">INT</p> | <p align="center">INT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">FLOAT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">INT</p> | <p align="center">INT</p> | <p align="center">INT</p> |

#### glist (List of Genre):

| Sid                       | Genre                      |
| ------------------------- | -------------------------- |
| <p align="center">INT</p> | <p align="center">TEXT</p> |

#### ulist (List of Users):

| uid                       | email                      | uname                      | pword                      | FavCount                  |
| ------------------------- | -------------------------- | -------------------------- | -------------------------- | ------------------------- |
| <p align="center">INT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">TEXT</p> | <p align="center">INT</p> |

#### mylistdb (List of which user is associated with which Series):

| uid                       | Sid                       | score                       | type                      |
| ------------------------- | ------------------------- | --------------------------- | ------------------------- |
| <p align="center">INT</p> | <p align="center">INT</p> | <p align="center">FLOAT</p> | <p align="center">INT</p> |

#### flist (Favorites list):

| uid                       | sid                       |
| ------------------------- | ------------------------- |
| <p align="center">INT</p> | <p align="center">INT</p> |

#### rlist (Review List):

| Sid                       | uid                       | review                     |
| ------------------------- | ------------------------- | -------------------------- |
| <p align="center">INT</p> | <p align="center">INT</p> | <p align="center">TEXT</p> |



## Gallery

- ### Main Page

<p align="center"> 
    <img src="./screenshots/thew.png">
 </p>

<br>

- ### Login Page

<p align="center"> 
    <img src="./screenshots/login.png">
 </p>

<br>

- ### Advance Search Page

<p align="center"> 
    <img src="./screenshots/adv.png">
 </p>

<br>

- ### Series

<p align="center"> 
    <img src="./screenshots/series.png">
 </p>

<br>

- ### MyList

<p align="center"> 
    <img src="./screenshots/mylist.png">
 </p>

<br>

<br>

## Donations

<a href="https://www.buymeacoffee.com/ra101"><img src="https://www.buymeacoffee.com/assets/img/custom_images/black_img.png" title="If this project is helpful to you and love my work and feel like showing love/appreciation, would you like to buy me a coffee?" ></a>

<br>

## Credit/Acknowledgment

[![Contributors](https://img.shields.io/github/contributors/ra101/theWTVlist?style=for-the-badge)](https://github.com/ra101/theWTVlist/graphs/contributors)

<br>



## License

[![License](https://img.shields.io/github/license/ra101/theWTVlist?style=for-the-badge)](https://github.com/ra101/theWTVlist/blob/master/LICENSE)

<br>



## Chat

 [![Protonmail](https://img.shields.io/badge/Protonmail-Email-ab44fe?style=for-the-badge&logo=protonmail)](mailto://agarwal.parth.101@protonmail.com) [![Telegram](https://img.shields.io/badge/Telegram-Chat-informational?style=for-the-badge&logo=telegram)](https://telegram.me/ra_101)
