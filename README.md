SUPERHEROES:
This is a rails API for managing heroes and their powers. It provides endpoints to create, retrieve, update, and delete heroes and powers, as well as associate powers with heroes through hero_powers.

FEATURES: 
1. CRUD operations for Heroes, Powers and HeroPowers. 
2. Association management between Heroes and Powers.
3. Validation of model attributes.
4. Error handling and appropriate status codes.
5. JSON response format.

GETTING STARTED:
Run the following commands;
1. git clone [repository-ssh-key] 
2. bundle install 
3. rails db:migrate db:seed 
4. rails server or rails s (The API will be accessible at 'http://localhost:3000')

API ENDPOINTS:
1. GET /heroes: Retrieves a list of all heroes.
2. GET /heroes/:id: Retrieves a specific hero by ID.
3. GET /powers: Retrieves a list of all powers.
4. GET /powers/:id: Retrieves a specific power by ID.
5. PATCH /powers/:id: Updates the description of a power.
6. POST /hero_powers: Creates a new hero_power association.

ERROR HANDLING:
The API handles various error scenarios and returns appropriate status codes and error messages in the JSON response. Common error scenarios include invalid requests, resource not found, and validation errors.

CONTRIBUTING:
Contributions are welcome! If you find any issues or would like to add new features, please open an issue or submit a pull request. To contribute to this project, follow these steps:
1. Fork the repository.
2. Create your feature branch: 'git checkout -b feature/my-feature'.
3. Commit your changes: git commit -am 'Add some feature'.
4. Push to the branch: git push origin feature/my-feature.
5. Submit a pull request.

AUTHORS:
Name - Yegon Japheth Kiptoo
Github Username - Jay254
Email - jyegon504@gmail.com