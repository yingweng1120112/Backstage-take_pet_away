<?php
require __DIR__ . '/parts/pdo-connect.php';  #獲取資料庫連線資料

$title = '新增產品';
?>

<!-- 所有頁面的拼接順序 每一頁都主要是換掉section的部分 -->
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>
<section>
    <div class="row justify-content-center">
        <div class="col-lg-5">
            <div class="card shadow-lg border-0 rounded-lg mt-5">
                <div class="card-header">
                    <h3 class="text-center font-weight-light my-4">新增商品</h3>
                </div>
                <div class="card-body">
                    <form name="form1">
                        <div class="form-floating mb-3">
                            <input class="form-control" id="name" type="text" name="name" placeholder="name" />
                            <label for="name">產品名稱</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input class="form-control" id="brand_name" type="text" name="brand_name" placeholder="brand_name" />
                            <label for="brand_name">品牌名稱</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input class="form-control" id="price" type="text" name="price" placeholder="price" />
                            <label for="price">產品價格</label>
                        </div>
                        <div class="mb-3" style="display: flex;">
                            <label for="type"></label>
                            <select class="form-select form-select-sm me-lg-4" aria-label="Small select example" id="type">
                                <option selected>產品種類</option>
                                <option value="1">寵物飼料</option>
                                <option value="2">寵物罐頭</option>
                                <option value="2">寵物零食</option>
                                <option value="2">寵物用品</option>
                                <option value="2">保健食品</option>
                            </select>
                        
                            <label for="species"></label>
                            <select class="form-select form-select-sm" aria-label="Small select example" id="species">
                                <option selected>適用物種</option>
                                <option value="1">狗寶貝</option>
                                <option value="2">貓寶貝</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="pic" class="form-label">產品圖片</label>
                            <input class="form-control" type="file" id="pic" name="photo" multiple>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />確認無誤
                        </div>
                        <button type="submit" class="btn btn-primary">新增</button>
                    </form>
                </div>
                <div class="card-footer text-center py-3">
                </div>
            </div>
        </div>
    </div>
</section>

<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>
<?php include __DIR__ . '/parts/6_foot.php' ?>