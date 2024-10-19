String getEmptyFieldValidationMessage(String fieldName) =>
    '$fieldName should not be empty';

bool aContainsBIgnoreCase(String a, String b) =>
    a.trim().toLowerCase().contains(b.trim().toLowerCase());

