<!-- 所有頁面的拼接順序 每一頁都主要是換掉section的部分 -->
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>

<!-- 主頁預設登入介面 -->
<section class="mt-5">
          <div class="row justify-content-center">
            <div class="col-lg-5">
              <div class="card shadow-lg border-0 rounded-lg mt-5">
                <div class="card-header">
                  <h3 class="text-center font-weight-light my-4">登入</h3>
                </div>
                <div class="card-body">
                  <form>
                    <div class="form-floating mb-3">
                      <input
                        class="form-control"
                        id="inputEmail"
                        type="email"
                        placeholder="name@example.com"
                      />
                      <label for="inputEmail">帳號</label>
                    </div>
                    <div class="form-floating mb-3">
                      <input
                        class="form-control"
                        id="inputPassword"
                        type="password"
                        placeholder="Password"
                      />
                      <label for="inputPassword">密碼</label>
                    </div>
                    <div class="form-check mb-3">
                      <input
                        class="form-check-input"
                        id="inputRememberPassword"
                        type="checkbox"
                        value=""
                      />
                      <label
                        class="form-check-label"
                        for="inputRememberPassword"
                        >記住密碼</label
                      >
                    </div>
                    <div
                      class="d-flex align-items-center justify-content-between mt-4 mb-0"
                    >
                      <a class="small" href="password.html">忘記密碼?</a>
                      <a class="btn btn-primary" href="index.html">登入</a>
                    </div>
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