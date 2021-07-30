<?php
include_once "model/UserModel.php";

class AuthModel extends Model
{
    public $model;
    public function __construct() {
        $this->model = new UserModel();
    }
    /**
     * Lấy thông tin user qua email
     */
    public function getRecord($email)
    {
        return parent::_getRecord("Select * from users where email = '$email'");
    }
    /**
     * Đăng ký
     */
   
}
