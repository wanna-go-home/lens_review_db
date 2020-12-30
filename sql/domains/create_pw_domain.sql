CREATE DOMAIN pw as text
  CHECK ( value ~ '^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d!@#$%^&*\(\)]{6,15}$' );  
