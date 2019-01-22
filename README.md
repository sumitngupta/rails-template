# Rails Template for new applications

This should get the developer all the way to the best logical point of generating "Business Logic".
(MVP) Target start to finish time is 30 minutes.

This is an opinionated rails template designed to get from zero to sane quick-start application with Production-worth characteristics. This means that it should not require a lot of manual steps.

If this template requires major udpates everytime there are minor changes in the ecosystem, thats a bad sign.

Please read the entire template to understand all the steps.
Some high level concepts this is going to account for:
- Launchable to a publically-available deployed environment like Heroku. Terraform might be the awesome solution here but might fall out of scope.
- Assumes a User.  Not sure if this is easy to do as an optional argument.  Authentication is common, this might be the strongest opinion. https://guides.rubyonrails.org/rails_application_templates.html#ask-question
- This assumes making a "professional-level" app as a requirement so the setup for easy "Professional Characteristics" should be prioritized
  * Websockets. Pusher has a free tier and might be the choice over the complexity of ActionCable, maybe maybe not
  * Full testing capabilities. Default templates for shared testing?
  * Should be clear and easy how to generate a modern frontend interface through the backend.
  * React? GraphQL? Redux?
  * Open source Design System pre-installed.  Material?
  * Code quality is paramount so linters with sane defaults

# Command to run:
``
rails _6.0.0.beta1_ new PROJECTNAME \
  --skip-test \
  --webpack=react \
  --skip-turbolinks \
  --database=postgresql \
  --skip-coffee \
  -m https://gist.githubusercontent.com/sumitngupta/4ee72a44c6d08a45fc6d1a56fb9102cf/raw/601ad1752c497d6570ea0ace0bd2fdd024d0b202/rails-template.rb
``
