<?php
class QUANTRI
{
	private $tendangnhap;
	private $matkham;

    
	
	/**
	 * Get the value of id
	 */
	public function gettendangnhap()
	{
		return $this->tendangnhap;
	}

	/**
	 * Set the value of id
	 *
	 * @return  self
	 */
	public function set($tendangnhap)
	{
		$this->tendangnhap = $tendangnhap;

		return $this;
	}


	public function resetPass($id, $newpass)
	{
		$dbcon = DATABASE::connect();
		try {
			$hash = md5($newpass);
			$sql = "UPDATE user SET password=:newpass WHERE id=:id";
			$cmd = $dbcon->prepare($sql);
			$cmd->bindValue(":newpass", $hash);
			$cmd->bindValue(":id", $id);
			$cmd->execute();
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}

	public function checkUsername($username)
	{
		$db = DATABASE::connect();
		try {
			$sql = "SELECT * FROM user WHERE username=:username";
			$cmd = $db->prepare($sql);
			$cmd->bindValue(":username", $username);
			$cmd->execute();
			$result = $cmd->fetchAll();
			return $result;
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}

	// authentication
	public function checkUser($username, $password)
	{
		$db = DATABASE::connect();
		try {
			$sql = "SELECT * FROM user WHERE username=:username AND password=:password";
			$cmd = $db->prepare($sql);
			$cmd->bindValue(":username", $username);
			$cmd->bindValue(":password", md5($password));
			$cmd->execute();
			$valid = ($cmd->rowCount() == 1);
			$cmd->closeCursor();
			return $valid;
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}
	// lấy thông tin người dùng có $email
	public function getUserInfo($username)
	{
		$db = DATABASE::connect();
		try {
			$sql = "SELECT * 
					FROM user
					WHERE username=:username";
			$cmd = $db->prepare($sql);
			$cmd->bindValue(":username", $username);
			$cmd->execute();
			$ketqua = $cmd->fetch();
			$cmd->closeCursor();
			return $ketqua;
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}


	//Select user
	public function selectAllUser()
	{
		$dbcon = DATABASE::connect();
		try {
			$sql = "SELECT * FROM user";
			$cmd = $dbcon->prepare($sql);
			$cmd->execute();
			$result = $cmd->fetchAll();
			return $result;
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}

	// Add user
	public function addUser($username, $password, $email, $phone_number, $address)
	{
		$dbcon = DATABASE::connect();
		try {
			$hash = md5($password);
			$sql = "INSERT INTO user (username, password, email, phone_number, address) VALUES (:username, :password, :email, :phone_number, :address)";
			$cmd = $dbcon->prepare($sql);
			$cmd->bindValue(":username", $username);
			$cmd->bindValue(":password", $hash);
			$cmd->bindValue(":email", $email);
			$cmd->bindValue(":phone_number", $phone_number);
			$cmd->bindValue(":address", $address);
			$cmd->execute();
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}

	// delete user 
	public function deleteUser($id)
	{
		$dbcon = DATABASE::connect();
		try {
			$sql = "DELETE FROM user WHERE id=:id";
			$cmd = $dbcon->prepare($sql);
			$cmd->bindValue(":id", $id);
			$result = $cmd->execute();
			return $result;
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}

	// update user 
	// Cập nhật thông tin ng dùng: họ tên, số đt, email, ảnh đại diện (không cập nhật hình ảnh và mật khẩu)
	public function capnhatnguoidung($id, $email, $sodt, $diaChi)
	{
		$db = DATABASE::connect();
		try {
			$sql = "UPDATE user set email=:email, phone_number=:sodt, address =:diaChi where username=:id";
			$cmd = $db->prepare($sql);
			$cmd->bindValue(':id', $id);
			$cmd->bindValue(':email', $email);
			$cmd->bindValue(':sodt', $sodt);
			$cmd->bindValue(':diaChi', $diaChi);
			$ketqua = $cmd->execute();
			return $ketqua;
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}

	public function updateUser($id, $password, $email, $phone_number, $address, $images)
	{
		$dbcon = DATABASE::connect();
		try {
			$sql = "UPDATE user SET password=:password, email:=email, phone_number:=phone_number, address:=address, images:=images WHERE id=:id";
			$cmd = $dbcon->prepare($sql);
			$cmd->bindValue(":password", $password);
			$cmd->bindValue(":email", $email);
			$cmd->bindValue(":phone_number", $phone_number);
			$cmd->bindValue(":address", $address);
			$cmd->bindValue(":images", $images);
			$cmd->bindValue(":id", $id);
			$result = $cmd->execute();
			return $result;
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}

	public function doiMatKhau($id, $newpass)
	{
		$dbcon = DATABASE::connect();
		try {
			$newpass = md5($newpass);
			$sql = "UPDATE user SET password=:newpass WHERE id=:id";
			$cmd = $dbcon->prepare($sql);
			$cmd->bindValue(":id", $id);
			$cmd->bindValue(":newpass", $newpass);
			$cmd->execute();
		} catch (PDOException $e) {
			$error_message = $e->getMessage();
			echo "<p>Lỗi truy vấn: $error_message</p>";
			exit();
		}
	}
}