Tokumei is all about get your project on the web.
Working on your project should get better with time.
Our priorities are maintainability and simplicity.


## Mind your own business


your app (some worker) - Tokumei (cheerleader)

By focusing on only the web layer you the developer can build almost anything
Tokumei has many assumptions on how you should handle the web

Maintainable applications value a clear separation of concerns.
Good tools should encourage this and some

- Domain driven design http://insights.workshop14.io/2015/08/20/domain-driven-design-where-the-real-value-lies.html
- Polyglot persistence
- Frontend agnostic
- Clean Architecture https://subvisual.co/blog/posts/20-clean-architecture
- Hexagonal Architecture
- Onion Architecture http://jeffreypalermo.com/blog/the-onion-architecture-part-1/

Encourage domain modelling

## Standing on the shoulders of giants

Tokumei does not make your application robust, erlang does.

erlang was designed to be scalable fault-tolerant this really helps your application always be up to server your users needs

## OTP citezenship

Serving your proposition of the web is just one part of a project
Tokumei is just among many OTP applications that create a whole system.

There are several key features to being a good OTP citizen.
No global state, allows an application to be started multiple times, this is great for testing.
spin up a version of your application for each test
run multiple web endpoints at once. This is great for a monolith first approach

Anonymous several parts of functionality are being extracted, Cookies and ServerSentEvents to help the community make clients and as yet unforseen capabilities
Isolated run in parallel

- Deploy endless stateful applications

### Deployability
As a standard mix application it is simple to deploy Tokumei applications.
In fact you are not really deploying a Tokumei application and so advice for deploying elixir will work with projects including tokumei

## Contents

Key components
- Routing
- Templates
- Assets
- Flash messages
- Sessions
- Logging

Things Tokumei would like to help you with

- content negotiation (MIME)
- authentication
- internationalization


## Inspiration

- Hanami
- Flask




capable/proficiet/supreme/expert
teamplayer/collaboreate
convenient/ comes from simple
future proof productivity


### XVC
- umbrella applications
- behaviours and interface tests
- adapter configuration


http://lucumr.pocoo.org/2013/11/17/my-favorite-database/
plus endless application talk

# Anon principles

Anon
====

### A discussion of a foundation toolset for building modern Internet applications with the elixir language.

> Don't love your tools. Love what they let you do.

## Discussion Driven Development
**This is not a framework developed in private I hope to release with fanfair**. To do so would fill the project with failings and inconsistencies by limiting it to a few points of view. Instead this project aims to expose the decision making process from day 1.

Currently the project only consists of this README and issues.

A lot of the thinking has been driven by completing this blog series on [domain driven design in Ruby](http://insights.workshop14.io/2015/07/14/domain-driven-design-introduction.html). Domain driven design asserts that a framework should be offer service to an application and not dictate how the application is arranged.

Finally many current framework solutions seam stuck in web 2.0 thinking with websockets added after. To handle both two way communication and offline modes something other than CRUD/REST is needed.

## Components

- [raxx](https://github.com/CrowdHailer/raxx/) web interface for elixir
- gutenberg templates for html etc
- heimdall form validation
- Pachyderm event sourced aggregates

## Inspiration
Tech always moves fast, such thing as the [NoSQL](http://martinfowler.com/bliki/NosqlDefinition.html) movement and the recent [churn in javascript frameworks](http://confreaks.tv/videos/lonestarruby2015-surviving-the-framework-hype-cycle) are challenging many assumptions. The list bellow are some of the ideas that are most relevant to where this project is going to begin with.

- **[DDD](http://insights.workshop14.io/2015/08/20/domain-driven-design-where-the-real-value-lies.html)** use domain relevant messages for communication
- **[Datomic](http://www.datomic.com/)** record changes not state to preserve history
- **[MQTT](http://www.hivemq.com/mqtt-essentials-part-1-introducing-mqtt/)** communication in realtime when relevant
- **[baconjs](https://baconjs.github.io/)/[ReactiveX](http://reactivex.io/)/[kefirjs](https://github.com/rpominov/kefir)** first class support async events and updates
- **[Rack](http://rack.github.io/)** use a request/response abstraction not a connection one for requests and responses.
- **[ActiveJob](http://edgeguides.rubyonrails.org/active_job_basics.html)** unified view of task
- **[t3js](http://t3js.org/)** flexible and extensible core structure
- **[hoodie](http://hood.ie/)** sensible offline contingency

## Aims
- Encourage contributors  
  Gather as many points of view as possible to build robust abstractions.
- To not build a framework  
  We may end up very near a framework but as much as possible this setup should be called by an application and not the other way round.
- Elixir as much as possible  
  The language choice is not the most important thing here, however Elixir developers should as rarely as possible need to use erlang to contribute.
- Simple things still simple  
  Example, realtime concerns must not add any complexity to thinking about a  request/response interaction.
- New capabilities not new conventions  
  Websockets add completly new capabilities to the web experience, transpiled ES6 does not. We will focus on the former.

# Let's get started
- Simple request/response abstraction is my issue [#1](https://github.com/workshop14/anon/issues/1)  
  [reddit descussion](https://www.reddit.com/r/ruby/comments/3jlpdo/where_is_rack_next_and_a_possible_elixir_successor/)
- Extend first class events into the client and into the database
  - [flight.js]() has some ideas for passing events in the client
  - [Datomic for 5yr olds](http://www.flyingmachinestudios.com/programming/datomic-for-five-year-olds/) has links to the datomic information model and the unofficial guide to rich hickeys brain

## Realtime messaging
The MQTT protocol seams the best way to send events particularly with websocket bridges. [CloudMQTT](https://www.cloudmqtt.com/) is a hosted mqtt broker with a free tier. [HiveMQ](http://www.hivemq.com/) is a program to download with a free license that allows less than 25 connections for personal projects.

[Paho](http://www.eclipse.org/paho/) is a selection of client libraries but does not include Ruby or Elixir


# Contributing
 You're encouraged to submit pull requests, propose features and discuss issues.

[Advice on encouraging contributions](http://confreaks.tv/videos/gogaruco2014-taking-over-someone-else-s-open-source-projects)
