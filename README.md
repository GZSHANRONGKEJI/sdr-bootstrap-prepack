# Spring Data REST Bootstrap prepack

This repo is a [Structor](https://github.com/ipselon/structor) starter project for [Spring Boot](http://projects.spring.io/spring-boot/) Web application with [React](https://facebook.github.io/react/) UI. 

## What can be built with this project?

Choosing this project as a starter project you can easily build a Web application for database CRUD operations with REST interface, authentication, and dynamic and good looking Web UI. 

Here you will find a wide range (which is getting wider day by day) of the components for sophisticated Web UI:
  * Data Grid components with sorting, paging, editing and deleting capabilities,
  * List components for collections,
  * Form components for adding, editing records in collections,
  * Form components for filtering data in collections,
  * Pagination components for the navigation though pages in Data Grids,
  * more than 40 components from popular labraries React Boostrap and React Widgets,
  * many adopted components such as form input elements, navigation through pages and others.

In contrast to majority of the Web apps for database CRUD operations, UI components of the project can display linked entities collections, interact with each other, can search data, has different types of input elements including dropdowns, date calendars and others.

It's worth a mention that all UI components are created and manipulated by a visual builder, which gives an instant feedback about how components look and feel.

All tools and libraries of this project are neatly configured and works perfect with each other, also you will find here a very simple building process of the whole application.

#### tl;dr
* Create an administration Web app for database with cool and dynamic UI.
* Build it as a single jar file and deploy it on the server.

## What is inside?

| Server part | Client part |
|-------------|-------------|
|Spring Boot | React |
|Spring Data | React Router |
|Spring Data REST | React Bootrap |
|Spring MVC | React Widgets |
|Spring Security | Redux |
| and other Java libs | and other JS libs |


## Getting started

### Prerequisites

* <a href="http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html" target="_blank">JDK 8</a>
* <a href="https://nodejs.org/en/" target="_blank">NodeJS 4 or 5</a>
* <a href="https://docs.npmjs.com/getting-started/installing-node" target="_blank">npm 3</a>
* <a href="https://www.npmjs.com/package/structor" target="_blank">Structor 0.2.9</a>

Assuming you are familiar with Spring/Sptring Data/Spring Security and React/Redux/React Router.

### Brief tutorial

It is needed to explain that this project is designed to work with Structor, wich has such a nice feature as the source code generators for React components, and which we will use intensively in this tutorial. So, if you are not familiar with Structor, it is recommended to watch <a href="https://www.youtube.com/watch?v=AY65e6Ry_rY" target="_blank">this video</a> and <a href="https://www.youtube.com/watch?v=JLz8B0XJPyk" target="_blank">this video</a> before starting this tutorial.

#### Three sources of components

There are 3 methods to get components in a Stuctor project:

1. Pre-created components, which have already written source code and can be found in the source code repository of the project
2. Build-in source code generators, which generate the source code from the composition of components on the page. They also can be found in the proejct source code.
3. Online source code generators, which generate the source code of the advanced components, such as data grids or forms for RESTful interface. They can be installed into project from [Structor Market](https://helmetrex.com) and behave as they are build-in generators. Look at [the list of available generators](http://probe.helmetrex.com/generators?projectId=175) for this project.

#### Create an account on Structor Market

In this tutorial you will create a few data aware components for Spring Data REST interface. You need to install online generators for such components. But if you are not signed in Structor Market you will not be authorized to call online generators from Structor.

If you don't have an account on Structor Market, please create it [here](http://probe.helmetrex.com/sign-up).

#### Starting Structor

If you do not have Structor yet, please install it by this command:
`
npm i structor -g
`

Create an empty folder and enter in it (assuming you are doing that in command line). 
Then type the following to run Structor:
`
structor
`

**Note:**  Structor should be installed in global scope, otherwise you will not be able to clone this repo in folder because folder will not be empty in case structor installed there.

After Stuctor successfully started open the address `http://localhost:2222/structor` in your browser.

**Note:** If you prefer to run Structor on another port use command option where port is specified: `structor -p 4000`

In the browser you will see the projects gallery, find **sdr-bootstrap-prepack** project there and start cloning it by clicking on `clone` link.

Cloning will take approximately 2 or 3 minutes. It takes so much time due to the npm installation process - it tries to install all needed dependecies from the npm repository.

**Note:** Sometimes npm 3 makes installation for a too long time, and Structor looses the control of this process. In that case it is recommended to reload entire page of the browser, and run `npm install` command manually in project's directory.

Right after finishing cloning process, you'll see the workspace of the Stuctor with the home page of the project.

#### Database entities and repositories

It is time to get familiar with the source code of the project. If you look at the structure of files inside the project directory you'll find two folders `server` and `client`. `server` dir includes all Java source code, and we need to find the source code of database entities in it right now.

Go to `server/src/main/java/com/changeme/repository` directory. Here you can see classes which describe database schema in terms of Spring Data entities and repositories. If you are not familiar with Spring Data, please read about this in [Reference Documentation](http://docs.spring.io/spring-data/jpa/docs/current/reference/html/).

There are already four entities: `AccessLevel`, `Department`, `Person`, `UserProfile`. We are interested only in 3 of them, because `UserProfile` entity is used in authentication mechanism and should not be exposed as Data REST enpoint. However, password field will not be shown in JSON even you expose `UserProfile` repository.

All what we should know about entities on this stage is that entities have relations as they are a mapping of the database tables with the same relations. Spring Data and Spring Boot have all other things regarding database connections and transactions implemented and set up inside.

Here a diagram of relations is:

#### Create List component

### How it works

