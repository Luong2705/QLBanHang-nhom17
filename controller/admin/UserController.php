<?php
include_once "model/UserModel.php";

class UserController extends BaseController
{
    public $model;
    public $linkUrl = "admin/user";
    public $path = "admin.php?controller=user";
    public $imagePath = 'upload/user';

    public function __construct()
    {
        $this->model = new UserModel();

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
            'title' => 'Quản lý tài khoản',
            'path' => 'user',
            'imagePath' => $this->imagePath,
        );

        $this->loadView("$this->linkUrl/index", $result);
        $this->setTemplate("base/admin/index");
    }
   
}