# Server issues on Nitrous
nitrous start server: rails server -b, --binding=0.0.0.0
if it fails, clearing pid file using the following command: pgrep ruby

# Installation

1 - Setting up

      > rvm install ruby-2.2.0
      > gem install rails-4.2.0
      > gem install bundler
       either do 
         > git clone git@github.com:etoundi1er/hinata.git
         
      > rails new hinata --database=postgresql
      then copy the files provided into the new 'hinata' directory
      
      > bundle install
      > rake db:migrate
      > rake db:seed
  
2 - Alternatively, to save yourself some time, a demo is available 
    
    https://hidden-river-8355.herokuapp.com/
    
      Demo admin user
        email: john@mail.com
        password: password1234
        

    
