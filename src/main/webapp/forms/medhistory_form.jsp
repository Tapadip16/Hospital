<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Flashing Pop-up</title>
</head>

<body>
<style>
    ::-webkit-scrollbar {
      display: none;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      height: 100vh;
      margin: 0;
      background: #000;
      color: #fff;
      font-size: 16px;
      font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }


    /* .popup-container {
      display: none;
    } */

    .popup {
      width: 940px;
      max-width: 100%;
      background: #191C24;

      margin-bottom: 10px;
      padding: 50px;
      border-radius: 5px;
      animation: flash 3s;
    }

    @keyframes flash {

      0%,
      50% {
        opacity: 1;
      }

      25%,
      75% {
        opacity: 0;
      }
    }

    h2 {
      text-align: center;
      margin-bottom: 10px;
    }

    .main,
    .main1,
    .main2,
    .main3,
    .main4 {
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: row;
      gap: 10px;
    }

    .input-wrap-row {
      margin-bottom: 16px;
    }

    .input-wrap label {
      display: block;
      margin: 8px 0 2px 10px;
    }

    .input-wrap-row input {
      border: 2px solid #fff;
      background: #191C24;
      color: #fff;
      border-radius: 3px;
      padding: 10px;
      display: block;
      width: 100%;
      font-size: 16px;
      transition: 0.5s ease;
    }

    .input-wrap-row input:focus {
      border-color: #1299cc;
    }

    .form-2-btn {
      display: grid;
      place-items: center;
      margin-top: 10px;
    }

    .commn-btn button {
      border: 0;
      padding: 12px 15px;
      background: #1299cc;
      color: #fff;
      width: 135px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 16px;
      border-radius: 36px;
      transition: 0.5s ease;
      cursor: pointer;
    }
</style>
  
  
  <form action="/HMS/medicl_his" method="post">
        <div class="Medical-History">
            <br><br><br>
            <h2>Patient Details</h2>
            <div class="input-wrap main1">
                <div class="input-wrap-row">
                    <label for="name">Name</label>
                    <input type="text" name="name" placeholder="Your Name" required>
                </div>
                <div class="input-wrap-row">
                    <label for="age">Age</label>
                    <input type="number" name="age" placeholder="Age" required>
                </div>
                <div class="input-wrap-row">
                    <label for="gender">Gender</label>
                    <input type="text" name="gender" placeholder="Male/Female" required>
                </div>
            </div>
        </div>
        <h2>Medical History</h2>
        <div class="Medical-History">
            <div class="input-wrap main1">
                <div class="input-wrap-row">
                    <label for="condition1">Condition 1</label>
                    <input type="text" name="condition1" placeholder="Hypertension">
                    <label for="diagnosis_date1">Diagnosis Date 1</label>
                    <input type="text" name="diagnosis_date1" placeholder="2022-03-15">
                </div>
                <div class="input-wrap-row">
                    <label for="condition2">Condition 2</label>
                    <input type="text" name="condition2" placeholder="Diabetes">
                    <label for="diagnosis_date2">Diagnosis Date 2</label>
                    <input type="text" name="diagnosis_date2" placeholder="2022-03-15">
                </div>
                <div class="input-wrap-row">
                    <label for="condition3">Condition 3</label>
                    <input type="text" name="condition3" placeholder="Asthma">
                    <label for="diagnosis_date3">Diagnosis Date 3</label>
                    <input type="text" name="diagnosis_date3" placeholder="2022-03-15">
                </div>
                <div class="input-wrap-row">
                    <label for="condition4">Condition 4</label>
                    <input type="text" name="condition4" placeholder="Allergies">
                    <label for="diagnosis_date4">Diagnosis Date 4</label>
                    <input type="text" name="diagnosis_date4" placeholder="2022-03-15">
                </div>
            </div>
        </div>
        <h2>Medication List</h2>
        <div class="form-container">
            <div class="input-wrap main2">
                <div class="input-wrap-row">
                    <label for="medication1">Medication 1</label>
                    <input type="text" name="medication1" placeholder="Lisinopril">
                    <label for="dosage1">Dosage 1</label>
                    <input type="text" name="dosage1" placeholder="10 mg">
                    <label for="frequency1">Frequency 1</label>
                    <input type="text" name="frequency1" placeholder="Once daily">
                </div>
                <div class="input-wrap-row">
                    <label for="medication2">Medication 2</label>
                    <input type="text" name="medication2" placeholder="Lisinopril">
                    <label for="dosage2">Dosage 2</label>
                    <input type="text" name="dosage2" placeholder="10 mg">
                    <label for="frequency2">Frequency 2</label>
                    <input type="text" name="frequency2" placeholder="Once daily">
                </div>
                <div class="input-wrap-row">
                    <label for="medication3">Medication 3</label>
                    <input type="text" name="medication3" placeholder="Lisinopril">
                    <label for="dosage3">Dosage 3</label>
                    <input type="text" name="dosage3" placeholder="10 mg">
                    <label for="frequency3">Frequency 3</label>
                    <input type="text" name="frequency3" placeholder="Once daily">
                </div>
                <div class="input-wrap-row">
                    <label for="medication4">Medication 4</label>
                    <input type="text" name="medication4" placeholder="Lisinopril">
                    <label for="dosage4">Dosage 4</label>
                    <input type="text" name="dosage4" placeholder="10 mg">
                    <label for="frequency4">Frequency 4</label>
                    <input type="text" name="frequency4" placeholder="Once daily">
                </div>
            </div>
        </div>
        <h2>Vital Signs</h2>
        <div class="form-container">
            <div class="input-wrap main3">
                <div class="input-wrap-row">
                    <label for="measurement1">Measurement 1</label>
                    <input type="text" name="measurement1" placeholder="Heart Rate">
                    <label for="result1">Result 1</label>
                    <input type="text" name="result1" placeholder="72 bpm">
                </div>
                <div class="input-wrap-row">
                    <label for="measurement2">Measurement 2</label>
                    <input type="text" name="measurement2" placeholder="Blood Pressure">
                    <label for="result2">Result 2</label>
                    <input type="text" name="result2" placeholder="120/80 mmHg">
                </div>
                <div class="input-wrap-row">
                    <label for="measurement3">Measurement 3</label>
                    <input type="text" name="measurement3" placeholder="Temperature">
                    <label for="result3">Result 3</label>
                    <input type="text" name="result3" placeholder="98.6°F">
                </div>
            </div>
        </div>
        <h2>Allergy Information</h2>
        <div class="form-container">
            <div class="input-wrap main4">
                <div class="input-wrap-row">
                    <label for="allergen1">Allergen 1</label>
                    <input type="text" name="allergen1" placeholder="Lisinopril">
                    <label for="reaction1">Reaction 1</label>
                    <input type="text" name="reaction1" placeholder="Rash">
                </div>
                <div class="input-wrap-row">
                    <label for="allergen2">Allergen 2</label>
                    <input type="text" name="allergen2" placeholder="Shellfish">
                    <label for="reaction2">Reaction 2</label>
                    <input type="text" name="reaction2" placeholder="Difficulty breathing">
                </div>
            </div>
        </div>
        <div class="commn-btn form-2-btn">
            <button type="submit" class="submit">Submit</button>
            <br><br><br>
        </div>
    </form>
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const popup = document.getElementById("popup");
      popup.style.display = "block";

    });
  </script>
</body>

</html>