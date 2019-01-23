Philosophies
------------
* This project is a work of engineering, not hackery.
  - Your first instinct is not necessarily correct.
  - Having to use a hack is a tragedy.
  - We are thorough in our assessment of the cost of being clever.

* This project uses behavior-driven development
  - The spec comes before the code.
  - If you can't write a spec for it, how can you write the code?
  - Sometimes the setup is hard, though.
  - We trust our test suite so we can commit code & deploy fearlessly.

* This project doesn't rewrite the wheel
  - Some hours spent searching for and evaluating possible solutions can save hours of writing and weeks of future debugging.

* This project outsources the crap
  - If its not our core business, there's a point to which its more valuable to pay someone else to do it
  - Github is superior to anything we would use here.
  - Heroku means we don't have to hire someone to babysit servers and generally make the lives of the engineers miserable. This won't last forever due to cost but the goal of any solution should be optimized by automation.

* This project uses the best tools
  - This goes for the entire stack.
  - We remain agnostic to specific tools a developer would want to have preference over (text editor, shell, etc)
  - We enforce standardization on tools that impact colleagues

Tech Notes
----------

Initial Setup
-------------

#### Commit Formatting ####
Git commits should have a certain format that looks like the following:

```
Required - Short engineering message, less than 80 characters.

Optional - Long engineering message, can be as long as needed
to get the message about the changeset across.

Optional - [changelog This is the message that will be printed]
```

## Technology
### Server Stack
#### Ruby on Rails

This project runs on [Ruby on Rails](http://rubyonrails.org/). Ruby and Rails are used due to the fact that
software can be written quickly and pivots can be made with minimal pain compared to other technologies. It's fully
expected that as time goes on and we are more sure of our future direction, we will start to optimize various parts of
the system for performance which probably means a move away from Ruby and/or Rails.

#### PostgreSQL

We use [PostgreSQL](http://www.postgresql.org/) for all relational data storage. As the stack starts to take more traffic/load we'll assess the introduction
of other data stores such as a fast read/write memory store like Redis.
