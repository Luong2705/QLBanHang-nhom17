<head>
    <link href="public/backend/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <script src="public/backend/vendor/datatables/jquery.dataTables.min.js" defer></script>
    <script src="public/backend/vendor/datatables/dataTables.bootstrap4.min.js" defer></script>
    <script src="public/backend/js/demo/datatables-demo.js" defer></script>
    <script>
    document.title = "<?php echo $title ?>"
    <?php if(isset($_GET['status'])) { ?>
        let title = ''
        <?php if($_GET['status'] == 'add') {?>
            title = "Thêm thành công!!",
        <?php } else if($_GET['status'] == 'update') {?>
            title = "Cập nhật thành công!!",
        <?php }?>
        Toast.fire({
            icon: "success",
            title,
        });
    <?php }?>
    </script>
</head>
<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800"><?php echo $title ?></h1>
    <div class="d-flex justify-content-end py-2">
        <a href="" class="btn btn-outline-primary">Thêm mới</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr class="text-center">
                            <th>ID</th>
                            <th>Tên tài khoản</th>
                            <th>Avatar</th>
                            <th>Email</th>
                            <th>Số điện thoại</th>
                            <th>Địa chỉ</th>
                            <th>Phân quyền</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($data as $key => $val) { ?>
                        <tr>
                            <td><?php echo $val->id ?></td>
                            <td><?php echo textTrundate($val->name, 20) ?></td>
                            <td class="text-center">
                                <?php if(file_exists("public/$imagePath/" . $val->thumbnail) && !empty($val->thumbnail)) { ?>
                                <img src="public/<?php echo $imagePath . '/' . $val->thumbnail?>"
                                    style="width: 80px; height: 80px; object-fit: cover">
                                <?php } else {; ?>
                                <img src="public/upload/no-avatar.png"
                                    style="width: 80px; height: 80px; object-fit: cover">
                                <?php } ?>
                            </td>
                            <td><?php echo $val->email ?></td>
                            <td><?php echo $val->phone ?></td>
                            <td><?php echo $val->address ?></td>
                            <td class="text-center">
                                <?php echo $val->rule == 1 ? 'Admin' : 'Member' ?>
                            </td>
                            <td class="text-center">
                                <a href="" class="text-info px-1"><i
                                        class="fa fa-pen"></i></a>
                                <a href="" class="text-danger px-1"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        <?php }; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>