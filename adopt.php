<?
require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/parts/pdo-connect.php';
$title = '新增線上認養';
$pageName = 'adopt';

?>
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>
<div class="container">
    <div class="row d-flex justify-content-center mt-ˇ">
        <div class="col-6">
            <div class="card my-5 border border-3 border-secondary">
                <div class="card-body ">
                    <h3 class="card-title text-center fw-bold mb-3">線上認養</h3>
                    <form name="form1" onsubmit="sendData(event)" class="vstack">
                        <input type="hidden" name="adopt_id" value="<?= $r['adopt_id'] ?>">
                        <div class="mb-3">
                            <label for="pet_id" class="form-label fw-bold">寵物ID</label>
                            <input type="text" class="form-control text-center fw-bold" id="pet_id" name="pet_id">
                            <div class="form-text"></div>
                        </div>
                        <div class="mb-3">
                            <label for="user_id" class="form-label fw-bold">使用者ID</label>
                            <input type="text" class="form-control text-center fw-bold" id="user_id" name="user_id">
                            <div class="form-text"></div>
                        </div>
                        <!-- <div class="mb-3">
                            <label for="donation_method" class="form-label">donation_method</label>
                            <input type="text" class="form-control" id="donation_method" name="donation_method">
                            <div class="form-text"></div>
                        </div> -->
                        <div class="d-flex flex-column">
                            <label for="donation_method" class="fw-bold">捐款方式</label>
                            <select class="py-2 text-center fw-bold" name="donation_method" id="donation_method" style="border-radius: 5px; margin: 10px 0px ">
                                <option value="單次捐贈">單次捐贈</option>
                                <option value="定期扣款">定期扣款</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="amount" class="form-label fw-bold">捐款金額</label>
                            <input type="text " class="form-control text-center fw-bold" id="amount" name="amount">
                            <div class="form-text"></div>
                        </div>
                        <!-- <div class="d-flex flex-column">
                            <label for="amount">amount</label>
                            <select class="py-2" name="amount" id="amount" style="border-radius: 5px; margin: 10px 0px ">
                                <option value="100">100</option>
                                <option value="200">200</option>
                            </select>
                        </div> -->
                        <!-- <div class="mb-3">
                            <label for="payment" class="form-label">payment</label>
                            <input type="text" class="form-control" id="payment" name="payment">
                            <div class="form-text"></div>
                        </div> -->
                        <div class="d-flex flex-column">
                            <label for="payment" class="fw-bold">付款方式</label>
                            <select class="py-2 text-center fw-bold" name="payment" id="payment" style="border-radius: 5px; margin: 10px 0px ">
                                <option value="銀行轉帳">銀行轉帳</option>
                                <option value="超商繳費">超商繳費</option>
                            </select>
                        </div>

                        <div class="d-flex flex-column">
                            <label for="donation" class="fw-bold">捐款用途</label>
                            <select class="py-2 text-center fw-bold" name="donation" id="donation" style="border-radius: 5px; margin: 15px 0px ">
                                <option value="不指定">不指定</option>
                                <option value="需要緊急">需要緊急</option>
                                <option value="絕孕計畫">絕孕計畫</option>
                            </select>
                        </div>
                        <!-- 
                        <div class="mb-3">
                            <label for="donation" class="form-label">donation</label>
                            <input type="text" class="form-control" id="donation" name="donation">
                            <div class="form-text"></div>
                        </div> -->

                        <div class="d-flex flex-column">
                            <label for="donate_address" class="fw-bold">捐贈證明寄送</label>
                            <select class="py-2 text-center fw-bold" name="donate_address" id="donate_address" style="border-radius: 5px; margin: 15px 0px ">
                                <option value="地址">地址</option>
                                <option value="信箱">信箱</option>
                            </select>
                        </div>
                        <!-- <div class="mb-3">
                            <label for="donate_address" class="form-label">donate_address</label>
                            <input type="text" class="form-control" id="donate_address" name="donate_address">
                            <div class="form-text"></div>
                        </div> -->

                        <button type="submit" class="btn btn-secondary mt-2">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5">資料新增結果</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="alert alert-success" role="alert">
                    資料新增成功
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續新增</button>
                <a href="adoptList.php" class="btn btn-primary">跳到列表頁</a>
            </div>
        </div>
    </div>
</div>

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
                <a href="adoptList.php" class="btn btn-primary">跳到列表頁</a>
            </div>
        </div>
    </div>
</div>
<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>
<script>
    function sendData(e) {
        const {
            user_id: nameField,
            pet_id: petField,
            amount: amountField,
        } = document.form1;



        e.preventDefault(); // 不要讓有外觀的表單以傳統的方式送出

        let isPass = true; // 有沒有通過檢查, 預設值為 true

        if (nameField.value.length < 2) {
            isPass = false;
            nameField.style.border = "2px solid red";
            nameField.nextElementSibling.innerHTML = '請輸入正確的姓名ID';
        }
        
        if (petField.value.length < 2) {
            isPass = false;
            petField.style.border = "2px solid red";
            petField.nextElementSibling.innerHTML = '請輸入正確的寵物ID';
        }       

        if (amountField.value.length < 2) {
            isPass = false;
            amountField.style.border = "2px solid red";
            amountField.nextElementSibling.innerHTML = '感謝你的捐贈';
        }

        // 如果欄位都有通過檢查, 才要發 AJAX
        if (isPass) {
            const fd = new FormData(document.form1); // 看成沒有外觀的表單

            fetch('adopt-api.php', {
                    method: 'POST',
                    body: fd
                })
                .then(r => r.json())
                .then(result => {
                    console.log(result);
                    if (result.success) {
                        // alert('資料新增成功')
                        successModal.show();
                    } else {
                        // alert('資料新增失敗')
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
                    // alert('資料新增發生錯誤' + ex)
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