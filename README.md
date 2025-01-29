# User Registration Script (Python)

## Description
This script is designed for user registration in a network setting. It prompts the user to input several pieces of information, such as their name, email, phone number, RG (Brazilian identity document), CPF (Brazilian tax ID), birthdate, IP address, and network mask. Each input is validated with regular expressions (regex) to ensure the data entered matches the expected format. If any input is invalid, the user is prompted to try again until the correct format is provided.

This script was created as part of a Networking course in 2017.

## Features
- Validates name, email, phone number, RG, CPF, birthdate, IP, and subnet mask.
- Prompts for re-entry if any input is invalid.

## Usage
1. Save as `registration.py`.
2. Run in the terminal: `python registration.py`.
3. Follow the prompts to input details.
4. Correct format is required for each field.


## Functions
- **nome()**: Name validation.
- **email()**: Email validation.
- **fixo()**: Phone number validation.
- **rg()**: RG validation.
- **cpf()**: CPF validation.
- **data()**: Date validation.
- **ip()**: IP validation.
- **mascara()**: Subnet mask validation.
