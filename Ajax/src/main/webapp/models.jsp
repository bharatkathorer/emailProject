<!-- insertData -->

<div class="modal" id="insertdata">
	<div class="modal-dialog modal-dialog-scrollable">
		<div class="modal-content">


			<!-- Modal Header -->
			<div class="modal-header">
				<h1 class="modal-title">Enter Data</h1>
				<button type="button" class="close" data-dismiss="modal">×</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="container">

					<div class="form-group">
						<label for="email">Name:</label> <input type="text"
							class="form-control" id="name" placeholder="Enter Full Name"
							name="name">
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" placeholder="Enter email"
							name="email">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" placeholder="Enter Password"
							name="pswd">
					</div>
					<div class="form-group">
						<label for="pwd">Mobile No:</label> <input type="tel"
							class="form-control" id="tel" placeholder="Enter mobile No"
							name="tel">
					</div>

				</div>
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-warning"
					onclick="insertData()">Submit</button>
				<button type="button" class="btn btn-outline-danger"
					data-dismiss="modal">Close</button>
			</div>

		</div>

	</div>
</div>
<!-- Update Model -->
<div class="modal" id="update">
	<div class="modal-dialog modal-dialog-scrollable">
		<div class="modal-content">


			<!-- Modal Header -->
			<div class="modal-header">
				<h1 class="modal-title">Update Data</h1>
				<button type="button" class="close" data-dismiss="modal">×</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="container">

					<div class="form-group">
						<label for="email">Name:</label> <input type="text"
							class="form-control" id="uname" placeholder="Enter Full Name"
							name="name">
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="uemail" placeholder="Enter email"
							name="email">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="upwd" placeholder="Enter Password"
							name="pswd">
					</div>
					<div class="form-group">
						<label for="pwd">Mobile No:</label> <input type="tel"
							class="form-control" id="utel" placeholder="Enter mobile No"
							name="tel">
					</div>
					<div class="form-group">
						<input type="hidden" class="form-control" id="uid" name="tel">
					</div>

				</div>
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-warning"
					onclick="Update()" data-dismiss="modal">Update</button>
				<button type="button" class="btn btn-outline-danger"
					data-dismiss="modal">Close</button>
			</div>

		</div>

	</div>
</div>
<!-- UserDetails -->
<div class="modal" id="userdetails">
	<div class="modal-dialog modal-dialog-scrollable">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">

				<h1 class="modal-title" class="text-primary">Personal
					Information</h1>
				<button type="button" class="close" data-dismiss="modal">×</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="container">
					<table class="text-primary">
						<tr>
							<td>Name</td>
							<td>: Bharat Balu Kathore</td>
						</tr>
						<tr>
							<td>Address</td>
							<td>: At Bherepada</td>
						</tr>
						<tr>
							<td>Mobile No</td>
							<td>: 9168598464</td>
						</tr>
						<tr>
							<td>Email</td>
							<td>: bharatkathore399@gmail.com</td>
						</tr>
						<tr>
							<td>Qualification</td>
							<td>: BE</td>
						</tr>
						<tr>
							<td>User</td>
							<td>: Administratior</td>
						</tr>

					</table>
					<!-- <div class="form-group">
									<label for="email">Name:</label> <input type="text"
										class="form-control" id="name" placeholder="Enter Full Name"
										name="name">
								</div>
								<div class="form-group">
									<label for="email">Email:</label> <input type="email"
										class="form-control" id="email" placeholder="Enter email"
										name="email">
								</div>
								<div class="form-group">
									<label for="pwd">Password:</label> <input type="password"
										class="form-control" id="pwd" placeholder="Enter Password"
										name="pswd">
								</div>
								<div class="form-group">
									<label for="pwd">Mobile No:</label> <input type="tel"
										class="form-control" id="tel" placeholder="Enter mobile No"
										name="tel">
								</div> -->

				</div>
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">

				<button type="button" class="btn btn-outline-danger"
					data-dismiss="modal">Close</button>
			</div>

		</div>

	</div>
</div>