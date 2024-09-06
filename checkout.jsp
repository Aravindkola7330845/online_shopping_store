<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0">
	<title>
        Enter your Details
	</title>

	<style>

		/* Styling the Body element i.e. Color,
		Font, Alignment */
		body {
			/* background-color: #05c46b; */
			font-family: Verdana;
			text-align: center;
		}

		/* Styling the Form (Color, Padding, Shadow) */
		form {
			background-color: #fff;
			max-width: 800px;
			margin: 50px auto;
			padding: 30px 20px;
			box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
		}

		/* Styling form-control Class */
		.form-control {
			text-align: left;
			margin-bottom: 25px;
		}

		/* Styling form-control Label */
		.form-control label {
			display: block;
			margin-bottom: 10px;
		}

		/* Styling form-control input,
		select, textarea */
		.form-control input,
		.form-control select,
		.form-control textarea {
			border: 1px solid #777;
			border-radius: 2px;
			font-family: inherit;
			padding: 10px;
			display: block;
			width: 95%;
		}

		/* Styling form-control Radio
		button and Checkbox */
		.form-control input[type="radio"],
		.form-control input[type="checkbox"] {
			display: inline-block;
			width: auto;
		}

		/* Styling Button */
		button {
			background-color: #05c46b;
			border: 1px solid #777;
			border-radius: 2px;
			font-family: inherit;
			font-size: 21px;
			display: block;
			width: 100%;
			margin-top: 50px;
			margin-bottom: 20px;
		}
	</style>
</head>

<body>
	<%@page import="java.util.*"%>
	<%
		String det = request.getParameter("item");
		StringTokenizer stk = new StringTokenizer(det,",");
		String item = stk.nextToken();
		String price = stk.nextToken();
	%>
	<h1>Please enter your Details:</h1>

	<!-- Create Form -->
	<form id="form" action="place_order.jsp" method="post">
		<!-- item details -->
		<div class="form-control">
			<label for="name" id="label-name">
				Your Item
			</label>

			<!-- Input Type Text -->
			<input type="text" id="name" value="<%=item%>" name="item" readonly/>
		</div>
		<!-- price details -->
		<div class="form-control">
			<label for="name" id="label-name">
				price
			</label>

			<!-- Input Type Text -->
			<input type="text" id="name" value="<%=price%>" name="price" readonly/>
		</div>


		<!-- Details -->
		<div class="form-control">
			<label for="name" id="label-name">
				Name
			</label>

			<!-- Input Type Text -->
			<input type="text"
				id="name"
				placeholder="Enter your name" required name="name"/>
		</div>

		<div class="form-control">
			<label for="email" id="label-email">
				Email
			</label>

			<!-- Input Type Email-->
			<input type="email"
				id="email"
				placeholder="Enter your email" name="email" required/>
		</div>

		<div class="form-control">
			<label for="age" id="label-age">
				Mobile Number
			</label>

			<!-- Input Type Text -->
			<input type="text"
				id="age"
				placeholder="Enter your Mobile Number" name="mobile" required/>
		</div>
		<div class="form-control">
			<label for="address" id="label-address">
				Address
			</label>

			<!-- Input Type Text -->
			<input type="text"
				id="address"
				placeholder="Enter your Mobile Number" name="address" required/>
		</div>
		<div class="form-control">
			<label for="pin" id="label-pin">
				Pin Code
			</label>

			<!-- Input Type Text -->
			<input type="text"
				id="pin"
				placeholder="Enter your Pin Code" name="pincode" required/>
		</div>

		<div class="form-control">
			<label for="inp-1">
				<input type="checkbox"
					name="inp" required/>Cash on Delivery</label>
		</div>

		<div class="form-control">
			<label for="comment">
				Any comments or suggestions
			</label>

			<!-- multi-line text input control -->
			<textarea name="comment" id="comment"
				placeholder="Enter your comment here">
			</textarea>
		</div>

		<!-- Multi-line Text Input Control -->
		<button type="submit" value="submit">
			Submit
		</button>
	</form>
</body>
</html>
