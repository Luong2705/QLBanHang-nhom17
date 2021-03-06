<?php include_once "helper/index.php" ?>
<header style="background: linear-gradient(180deg, #000000, rgba(0, 0, 0, 0));">
    <div class="container">
        <div class="wrap-head">
            <nav class="d-nav v1">
                <div class="logo-mb">
                    <a href="<?php echo "{$APP_URL}/admin"; ?>"><img src="public/frontend/images/logo-white.png" ></a>
                </div>
                <ul>
                    <li class="active"><a class="smooth" href="<?php echo "{$APP_URL}/"; ?>" title="">Trang chủ</a>
                    </li>
                    <li><a class="smooth" href="javascript:;" title="">Sản phẩm <i class="arrow_triangle-down"></i></a>
                        <?php showCategories($categories); ?>
                    </li>
                    <li><a class="smooth" href="" title="">khuyến mãi</a></li>
                    <li><a class="smooth" href="" title="">về chúng tôi</a></li>
                </ul>
            </nav>
            <a href="<?php echo "{$APP_URL}/admin"; ?>" class="logo"><img src="public/frontend/images/1.png" style="margin-top: 10px; max-width:150px;"
                    alt=""></a>
            <div class="head-right">
                <nav class="d-nav">
                    <ul>
                        <li><a class="smooth" href="" title="">Hỗ trợ</a></li>
                        <li><a class="smooth" href="" title="">tin tức</a></li>
                        <li><a class="smooth" href="" title="">liên hệ</a></li>
                    </ul>
                </nav>
                <div class="head-crt">
                    <div class="head-search">
                        <span class="ic-search"><i class="icon_search"></i></span>
                        <form class="form-search" method="POST" action="/clothes/index.php?controller=search">
                            <div class="form-group">
                                <input type="text" placeholder="Tìm kiếm ..." name="search">
                                <button type="submit"><i class="icon_search"></i></button>
                            </div>
                        </form>
                    </div>
</div><div>
                    <?php
                    if (!empty($_SESSION['email'])) {
                    ?>
                    <div class="head-user">
                        <a href="javascript:;" title=""><img
                                src="<?php echo isset($_SESSION['thumbnail']) ? 'public/upload/user/' . $_SESSION['thumbnail']  : 'public/upload/no-avatar.png'?>"
                                alt=""></a>
                        <ul class="nav-user">
                            <li class="active"><a href="<?php echo "{$APP_URL}/account"; ?>" title=""><i
                                        class="lnr lnr-user"></i>Thông tin cá nhân</a>
                            </li>
                            <li><a href="<?php echo "{$APP_URL}/history-order"; ?>" title=""><i
                                        class="lnr lnr-history"></i>Lịch sử mua hàng</a></li>
                            </li>
                            <li><a href="admin/logout" title=""><i class="lnr lnr-exit"></i>Đăng xuất</a></li>
                        </ul>
                    </div>
                    <?php } else {?>
                    <a href="login" title="" class="head-login"><i class="lnr lnr-user"></i><span>Đăng nhập</span></a>

                    <?php }?>
                </div>
            </div>
            <div class="icon-menu open-mnav">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
</header>