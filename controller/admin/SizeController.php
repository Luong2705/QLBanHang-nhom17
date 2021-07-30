<?php
include_once "model/SizeModel.php";

class SizeController extends BaseController
{
    public $model;
    public $linkUrl = "admin/size";
    public $path = "admin.php?controller=size";

    public function __construct()
    {
        $this->model = new SizeModel();

        $action = isset($_GET['action']) ? $_GET['action'] : '';
        $id = isset($_GET['id']) ? $_GET['id'] : 0;
        switch ($action) {
            default:
                $this->getList();
                break;
        }
    }

    /**
     * Lấy danh sách phần tử
     */
    public function getList()
    {
        $data = $this->model->getListAll();
        $result = array(
            'data' => $data,
            'title' => 'Quản lý kích thước sản phẩm',
            'path' => 'size'
        );

        $this->loadView("$this->linkUrl/index", $result);
        $this->setTemplate("base/admin/index");
    }
    
}
