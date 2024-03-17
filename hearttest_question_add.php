<?php
// require __DIR__ . '/parts/admin-required.php'; 等連接
require __DIR__ . '/parts/pdo-connect.php';
$title = '新增測驗題目';
$pageName = 'question_add'
?>
<style>
    form .form-text {
        color: red;
    }
</style>
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>


<section class="container mt-auto">
    <div class="row">
        <div class="col-10">
            <div class="card">
                <div class="card-body container ">
                    <h5 class="card-title">新增測驗題目</h5>
                    <form name="form1" onsubmit="sendData(event)">
                        <div class="row mb-3">
                            <label for="question" class="form-label ">題目</label>
                            <div class="col-md-12">
                                <textarea class="form-control " id="question" name="question_content" cols="30" rows="3" placeholder="最多輸入 25 個字" maxlength="25"></textarea>
                                <div class="form-text"></div>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label for="optionA" class="form-label">選項 A</label>
                                <input type="text" class="form-control" id="optionA" name="option_a" placeholder="最多輸入 15 個字" maxlength="15">
                                <div class="form-text"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="valueA" class="form-label">選項 A 分數</label>
                                <input type="text" class="form-control" id="valueA" name="option_value_a" placeholder="請輸入1～4，每個選項不可重複">
                                <div class="form-text"></div>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label for="optionB" class="form-label">選項 B</label>
                                <input type="text" class="form-control" id="optionB" name="option_b" placeholder="最多輸入 15 個字" maxlength="15">
                                <div class="form-text"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="valueB" class="form-label">選項 B 分數</label>
                                <input type="text" class="form-control" id="valueB" name="option_value_b" placeholder="請輸入1～4，每個選項不可重複">
                                <div class="form-text"></div>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label for="optionC" class="form-label">選項 C</label>
                                <input type="text" class="form-control" id="optionC" name="option_c" placeholder="最多輸入 15 個字" maxlength="15">
                                <div class="form-text"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="valueC" class="form-label">選項 C 分數</label>
                                <input type="text" class="form-control" id="valueC" name="option_value_c" placeholder="請輸入1～4，每個選項不可重複">
                                <div class="form-text"></div>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label for="optionD" class="form-label">選項 D</label>
                                <input type="text" class="form-control" id="optionD" name="option_d" placeholder="最多輸入 15 個字" maxlength="15">
                                <div class="form-text"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="valueD" class="form-label">選項 D 分數</label>
                                <input type="text" class="form-control" id="valueD" name="option_value_d" placeholder="請輸入1～4，每個選項不可重複">
                                <div class="form-text"></div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary col-md-12">新增題目</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- 3.Modal(互動視窗)資料新增成功 -->
    <!-- https://getbootstrap.com/docs/5.3/components/modal/ -->
    <div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">資料新增結果</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="modal-body">
                    <!-- https://getbootstrap.com/docs/5.3/components/alerts/ -->
                    <div class="alert alert-success" role="alert">
                        資料新增成功
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續新增</button>
                        <a href="list.php" class="btn btn-primary">跳到列表頁</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal 資料新增失敗 -->
    <div class="modal fade" id="failureModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">資料沒有新增</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="alert alert-danger" role="alert">
                        資料新增沒有成功
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續新增</button>
                    <a href="list.php" class="btn btn-primary">跳到列表頁</a>
                </div>
            </div>
        </div>
    </div>

</section>





<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>

<script>
    let question = document.getElementById('question');
    let optionA = document.getElementById('optionA');
    let optionB = document.getElementById('optionB');
    let optionC = document.getElementById('optionC');
    let optionD = document.getElementById('optionD');
    let valueA = document.getElementById('valueA');
    let valueB = document.getElementById('valueB');
    let valueC = document.getElementById('valueC');
    let valueD = document.getElementById('valueD');

    function sendData(e) {
        //格式沒問題欄位的外觀要回復原來的狀態
        question.style.border = "1px solid #CCC";
        question.nextElementSibling.innerHTML = '';
        optionA.style.border = "1px solid #CCC";
        optionA.nextElementSibling.innerHTML = '';
        optionB.style.border = "1px solid #CCC";
        optionB.nextElementSibling.innerHTML = '';
        optionC.style.border = "1px solid #CCC";
        optionC.nextElementSibling.innerHTML = '';
        optionD.style.border = "1px solid #CCC";
        optionD.nextElementSibling.innerHTML = '';
        valueA.style.border = "1px solid #CCC";
        valueA.nextElementSibling.innerHTML = '';
        valueB.style.border = "1px solid #CCC";
        valueB.nextElementSibling.innerHTML = '';
        valueC.style.border = "1px solid #CCC";
        valueC.nextElementSibling.innerHTML = '';
        valueD.style.border = "1px solid #CCC";
        valueD.nextElementSibling.innerHTML = '';


        e.preventDefault(); //不要讓表單以傳統的方式送出
        //建立檢查設定
        let isPass = true; //是否通過檢查 預設值為true

        //TODO:檢查資料的格式(前後端都要檢查)

        //欄位都必填
        if (question.value.length < 1) {
            isPass = false;
            question.style.border = "2px solid red"
            question.nextElementSibling.innerHTML = '此欄為必填';
        }
        if (optionA.value.length < 1) {
            isPass = false;
            optionA.style.border = "2px solid red"
            optionA.nextElementSibling.innerHTML = '此欄為必填';
        }
        if (optionB.value.length < 1) {
            isPass = false;
            optionB.style.border = "2px solid red"
            optionB.nextElementSibling.innerHTML = '此欄為必填';
        }
        if (optionC.value.length < 1) {
            isPass = false;
            optionC.style.border = "2px solid red"
            optionC.nextElementSibling.innerHTML = '此欄為必填';
        }
        if (optionD.value.length < 1) {
            isPass = false;
            optionD.style.border = "2px solid red"
            optionD.nextElementSibling.innerHTML = '此欄為必填';
        }
        if (valueA.value.length < 1) {
            isPass = false;
            valueA.style.border = "2px solid red"
            valueA.nextElementSibling.innerHTML = '此欄為必填';
        }
        if (valueB.value.length < 1) {
            isPass = false;
            valueB.style.border = "2px solid red"
            valueB.nextElementSibling.innerHTML = '此欄為必填';
        }
        if (valueC.value.length < 1) {
            isPass = false;
            valueC.style.border = "2px solid red"
            valueC.nextElementSibling.innerHTML = '此欄為必填';
        }
        if (valueD.value.length < 1) {
            isPass = false;
            valueD.style.border = "2px solid red"
            valueD.nextElementSibling.innerHTML = '此欄為必填';
        }


        //欄位都有通過檢查 發AJAX取得值
        if (isPass) {
            const fd = new FormData(document.form1); //FormData看成沒有外觀的表單 主要功能是透過ajax傳送給後端

            fetch('hearttest_question_add-api.php', {
                    method: 'POST',
                    body: fd
                })
                .then(r => r.json())
                .then(result => {
                    console.log(result);
                    if (result.success) {
                        successModal.show();
                    } else {
                        if (result.error) {
                            failureInfo.innerHTML = result.error;
                        } else {
                            failureInfo.innerHTML = '資料新增沒有成功';
                        }
                        failureModal.show();
                    }
                })
                .catch(ex => {
                    console.log(ex);
                    //alert('資料發生錯誤'+ex)
                    failureInfo.innerHTML = '資料新增發生錯誤' + ex;
                    failureModal.show();
                })
        }

    }
    const successModal = new bootstrap.Modal('#successModal');
    const failureModal = new bootstrap.Modal('#failureModal');
    const failureInfo = document.querySelector('#failureModal .alert-danger');
</script>

<?php include __DIR__ . '/parts/6_foot.php' ?>