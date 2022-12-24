<?php
    require '../inc/myconnect.php';
    $id = $_GET['id'];

    // sql to delete a record
    $sql = "DELETE FROM loginuser WHERE id=".$id;

    if ($conn->query($sql) === TRUE) {
        header('Location: quanlykhachhang.php');
    } else {
        echo "Error deleting record: " . $conn->error;
    }

$conn->close();
?>
</script>