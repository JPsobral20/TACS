class User {
    joinDate;
    averageRating;
    userID;
    passwordHash;
    email;
    bio;
    isBanned;
    phone;
    address;
    name;

    constructor(joinDate, averageRating, userID, passwordHash, email, bio, isBanned, phone, address, name) {
        this.joinDate = joinDate;
        this.averageRating = averageRating;
        this.userID = userID;
        this.passwordHash = passwordHash;
        this.email = email;
        this.bio = bio;
        this.isBanned = isBanned;
        this.phone = phone;
        this.address = address;
        this.name = name;
    } 


    // Example method that uses config value
    
}