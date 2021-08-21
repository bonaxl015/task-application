User.create(email: 'randy@example.com',
            password: 'testtest',
            password_confirmation: 'testtest')

User.create(email: 'bonaxl015@example.com',
            password: 'testtest',
            password_confirmation: 'testtest')

Category.create(name: 'Foods',
                image_url: 'https://www.helpguide.org/wp-content/uploads/table-with-grains-vegetables-fruit-768.jpg',
                user_id: 1)

Category.create(name: 'Cars',
                image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg',
                user_id: 2)

Task.create(name: 'Eat breakfast',
            description: 'Eat because I am hungry',
            priority: 1,
            deadline: '2021-08-21 05:59:02.287974000 +0000',
            completed: true,
            user_id: 1,
            category_id: 1)

Task.create(name: 'Eat lunch',
            description: 'Eat because I am hungry again',
            priority: 2,
            deadline: '2021-08-21 11:59:02.287974000 +0000',
            completed: false,
            user_id: 1,
            category_id: 1)

Task.create(name: 'Eat dinner',
            description: 'Eat because I am hungry again',
            priority: 3,
            deadline: '2021-08-21 11:59:02.287974000 +0000',
            completed: false,
            user_id: 1,
            category_id: 1)

Task.create(name: 'Wash the car',
            description: 'My car is full of dirt',
            priority: 2,
            deadline: '2021-08-21 06:59:02.287974000 +0000',
            completed: true,
            user_id: 2,
            category_id: 2)

Task.create(name: 'Repair the car',
            description: 'My car is not starting',
            priority: 1,
            deadline: '2021-08-21 08:59:02.287974000 +0000',
            completed: false,
            user_id: 2,
            category_id: 2)

Task.create(name: 'Air the tires',
            description: 'My tires are flat',
            priority: 3,
            deadline: '2021-08-21 10:59:02.287974000 +0000',
            completed: false,
            user_id: 2,
            category_id: 2)