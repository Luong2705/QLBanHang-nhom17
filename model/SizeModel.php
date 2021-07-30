<?php

class SizeModel extends Model
{
    public $table = 'sizes';
    /**
     * Lấy danh sách phần tử
     */
    public function getListAll()
    {
        $result = parent::_getListAll("Select * from `$this->table` order by created_at desc");
        return $result;
    }
    /**
     * Lấy số bản ghi
     */
    public function getRowCount()
    {
        $result = parent::_getRowCount("Select id from `$this->table`");
        return $result;
    }
    /**
     * Lấy thông tin phần tử
     */
    public function getRecord($id)
    {
        $result = parent::_getRecord("Select * from `$this->table` where id = $id");
        return $result;
    }
   
}
