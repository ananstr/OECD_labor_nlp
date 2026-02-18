-- Database initialization script for Repertorio delle Qualificazioni della Regione Calabria

-- Create tables based on the data model

CREATE TABLE IF NOT EXISTS profili (
    id_profilo INTEGER PRIMARY KEY,
    titolo TEXT NOT NULL,
    descrizione TEXT,
    liv_eqf TEXT,
    settore TEXT,
    ada_1 TEXT,
    ada_2 TEXT,
    ada_3 TEXT,
    ada_4 TEXT,
    ada_5 TEXT,
    ada_6 TEXT,
    ada_7 TEXT,
    ada_8 TEXT,
    ada_9 TEXT,
    ada_10 TEXT,
    ada_11 TEXT,
    ada_12 TEXT,
    ada_13 TEXT,
    ada_14 TEXT,
    ada_15 TEXT,
    ada_16 TEXT,
    ada_17 TEXT,
    ada_18 TEXT,
    ada_19 TEXT,
    ada_20 TEXT,
    ada_21 TEXT,
    ada_22 TEXT,
    ada_23 TEXT,
    ada_24 TEXT,
    ada_25 TEXT,
    ada_26 TEXT,
    ada_27 TEXT,
    ada_28 TEXT,
    ada_29 TEXT,
    ada_30 TEXT,
    ada_31 TEXT,
    ada_32 TEXT,
    ada_33 TEXT,
    ada_34 TEXT,
    ada_35 TEXT,
    ada_36 TEXT,
    ada_37 TEXT,
    ada_38 TEXT,
    ada_39 TEXT,
    ada_40 TEXT,
    ada_41 TEXT,
    ada_42 TEXT,
    ada_43 TEXT,
    ada_44 TEXT,
    ada_45 TEXT,
    ada_46 TEXT,
    ada_47 TEXT
);

CREATE TABLE IF NOT EXISTS competenze (
    id_competenza INTEGER PRIMARY KEY,
    id_profilo INTEGER NOT NULL REFERENCES profili(id_profilo),
    titolo TEXT NOT NULL,
    descrizione TEXT,
    risultato TEXT
);

CREATE TABLE IF NOT EXISTS conoscenze (
    id_conoscenza INTEGER,
    id_competenza INTEGER REFERENCES competenze(id_competenza),
    descrizione TEXT NOT NULL,
    PRIMARY KEY (id_conoscenza, id_competenza)
);

CREATE TABLE IF NOT EXISTS attivita (
    id_attivita INTEGER,
    id_competenza INTEGER REFERENCES competenze(id_competenza),
    descrizione TEXT NOT NULL,
    PRIMARY KEY (id_attivita, id_competenza)
);

CREATE TABLE IF NOT EXISTS abilita (
    id_abilita INTEGER,
    id_competenza INTEGER REFERENCES competenze(id_competenza),
    descrizione TEXT NOT NULL,
    PRIMARY KEY (id_abilita, id_competenza)
);

-- Create indexes for better query performance
CREATE INDEX idx_competenze_profilo ON competenze(id_profilo);
CREATE INDEX idx_conoscenze_competenza ON conoscenze(id_competenza);
CREATE INDEX idx_attivita_competenza ON attivita(id_competenza);
CREATE INDEX idx_abilita_competenza ON abilita(id_competenza);
