# Doctor's Appointments
This is a Doctor's Appointment application that is intended to show some of the skills of a full-stack web developer that uses Ruby on Rails and React.

Doctor's appointments is a an API tied to a frontend written in react, made using the methodology and indications of the Capstone Project provided by [Microverse](https://www.microverse.org/). This project ask us to make a industry level application to show some of the skills learnt during the course. here to see the project requirements.

## Built With

- Ruby v2.7.2
- Ruby on Rails v6.1.0
- Rspec
- Capybara
- rubocop
- Bootstrap
- heroku

## The Web App

The live version of this project is on [Doctor's Appointments](https://sleepy-ocean-62491.herokuapp.com/)

## Video Link



## Getting Started

To get a local copy up and running follow these simple example steps.İnitial

**Setup**

- Clone this repository with `https://github.com/taiwo2/ror-lifestyle-capstone.git` using your terminal or command line.<br>
- Change to the project directory by entering `cd ror-lifestyle-capstone` in the terminal<br>
- Next run `bundle install` to install the necessary dependencies<br>
- run rails `active_storage:install`
- run `rails db:create`
- Run `rails db:migrate` to setup your local database.<br>
- Run `rails db:seed` to get seeded data for project.<br>


### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

> for test formatting add below script in .rspec file

```
    rpsec --format documentation
```

> To run all the tests run below script in the terminal

`rspec`
# Doctors App Features
Once you log in, you will be taken to the homepage. As this is a partial implementation, only the nav bar and the Doctor’s button are currently available.

Click on Doctor and behold the doctor search bar! There, you can select a specialty and the corresponding doctors will be filtered and displayed for you. Select the doctor that you prefer.
The most important and elaborate part of this application is the booking system, in which every doctor has a totally independent set of available appointments. You can choose the date and time for the appointment and click Book. You will then be taken to a confirmation window and voila: your appointment is arranged.

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Acknowledgments

- [Murat Korkmaz](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) for design
- [Microverse](https://microverse.org)

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
