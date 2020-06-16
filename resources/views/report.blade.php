<html>
<head>
  <title> Report Card </title>
  <style type="text/css">
    html {
      font-family:arial;
      font-size: 18px;
    }

    td {
      border: 1px solid #726E6D;
      padding: 15px;
    }

    thead{
      font-weight:bold;
      text-align:center;
      background: #625D5D;
      color:white;
    }

    table {
      border-collapse: collapse;
      width:100%;
    }

    fieldset {
      width:97.5%;
    } 

    .footer {
      text-align:right;
      font-weight:bold;
    }

    .fa {
      font-size: 20px;
    }

    tbody >tr:nth-child(odd) {
      background: #D1D0CE;
    }
  </style>
</head>
<body>
  <a href="/home" style="float: right"><i class="fa fa-arrow-left" aria-hidden="true"> BACK</i></a>
  <h2 style="text-align: center"> Report Card </h2>
  <fieldset>
    <legend>Personal Details:</legend>
    Name: XYZ<br>
    Email: abc@gmail.com<br>
    DOB: XX-XX-XXXX
  </fieldset>
  <table>
    <thead>
      <tr>
        <td colspan="2"> Report Status </td>
        <td rowspan="2"> Total Questions </td>
      </tr>
      
    </thead>
    <tbody>
      <tr>
        <td colspan="2">Total Questions </td>
        <td>{{ $question_count }}</td>
      </tr>
      <tr>
        <td colspan="2">Attempt Questions </td>
        <td>{{ $attempt_que }}</td>
      </tr>
      <tr>
        <td colspan="2">Correct Questions </td>
        <td>{{ $correct }}</td>
      </tr>
      <tr>
        <td colspan="2">Wrong Questions </td>
        <td>{{ $wrong }}</td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="2" class="footer">Obtained / Total</td>
        <td colspan="2">{{ $correct/$question_count*100 }}%</td>
      </tr>
  </table>
</body>
</html>