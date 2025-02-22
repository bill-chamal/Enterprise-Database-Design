CREATE TABLE Ασθενής(
    Ονοματεπώνυμο   VARCHAR(45),
    AMKA            INT,
    Ασφάλεια        VARCHAR(45),
    Διεύθυνση       VARCHAR(45),
    PRIMARY KEY (AMKA)
)

CREATE TABLE Ιατρός(
    Ονοματεπώνυμο   VARCHAR(45),
    ΑΦΜ             INT,
    Ειδικότητα      VARCHAR(45),
    Τηλέφωνο        INT,
    PRIMARY KEY (ΑΦΜ)
)

CREATE TABLE Συνταγή(                  -- Συνταγή & Περιέχει
    κωδικός         INT,
    ημερομηνία      DATE,
    Όνομα           VARCHAR(45),
    AMKA            INT,
    ΑΦΜ             INT
    PRIMARY KEY (κωδικός),
    FOREIGN KEY (AMKA)  REFERENCES Ασθενής,
    FOREIGN KEY (ΑΦΜ)   REFERENCES Ιατρός,
    FOREIGN KEY (Όνομα) REFERENCES Φάρμακο
)

CREATE TABLE Αλληλεπιδρά(
    Όνομα1      VARCHAR(45),
    Ονομα2      VARCHAR(45)
    PRIMARY KEY (Όνομα1, Όνομα2),
    FOREIGN KEY (Όνομα1) REFERENCES Φάρμακο (Όνομα),
    FOREIGN KEY (Όνομα2) REFERENCES Φάρμακο (Όνομα),
)

CREATE TABLE Φάρμακο(
    Όνομα           VARCHAR(45),
    Δραστική_Ουσία  VARCHAR(45),
    Επωνυμία        VARCHAR(45),
    PRIMARY KEY (Όνομα),
    FOREIGN KEY (Επωνυμία) REFERENCES Εταιρία
)

CREATE TABLE Εταιρία(
    Επωνυμία        VARCHAR(45),
    Διεύθυνση       VARCHAR(45),
    PRIMARY KEY (Επωνυμία)
)