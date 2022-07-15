<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/template/dist/img/logo/logo-smk-Krian-1.png">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/Login_v12/vendor/bootstrap/css/bootstrap.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/Login_v12/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/Login_v12/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/Login_v12/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/Login_v12/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/Login_v12/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/Login_v12/css/util.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/Login_v12/css/main.css">
    <!--===============================================================================================-->
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/zebra_dialog@latest/dist/css/flat/zebra_dialog.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.7/united/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/SyntaxHighlighter/3.0.83/styles/shCoreDefault.css" />
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/SyntaxHighlighter/3.0.83/scripts/shCore.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/SyntaxHighlighter/3.0.83/scripts/shBrushJScript.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/SyntaxHighlighter/3.0.83/scripts/shBrushXml.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/SyntaxHighlighter/3.0.83/scripts/shBrushCss.min.js"></script> -->

    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/template/plugins/iCheck/all.css">
    <style>
        /* [data-tooltip] {
            position: relative;
            z-index: 2;
            cursor: pointer;
        } */

        /* Hide the tooltip content by default */
        /* [data-tooltip]:before,
        [data-tooltip]:after {
            visibility: hidden;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
            filter: progid: DXImageTransform.Microsoft.Alpha(Opacity=0);
            opacity: 0;
            pointer-events: none;
        } */

        /* Position tooltip above the element */
        /* [data-tooltip]:before {
            position: absolute;
            bottom: 150%;
            left: 50%;
            margin-bottom: 5px;
            margin-left: -80px;
            padding: 7px;
            width: 160px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
            background-color: #000;
            background-color: hsla(0, 0%, 20%, 0.9);
            color: #fff;
            content: attr(data-tooltip);
            text-align: center;
            font-size: 14px;
            line-height: 1.2;
        } */

        /* Triangle hack to make tooltip look like a speech bubble */
        /* [data-tooltip]:after {
            position: absolute;
            bottom: 150%;
            left: 50%;
            margin-left: -5px;
            width: 0;
            border-top: 5px solid #000;
            border-top: 5px solid hsla(0, 0%, 20%, 0.9);
            border-right: 5px solid transparent;
            border-left: 5px solid transparent;
            content: " ";
            font-size: 0;
            line-height: 0;
        } */

        /* Show tooltip content on hover */
        /* [data-tooltip]:hover:before,
        [data-tooltip]:hover:after {
            visibility: visible;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
            filter: progid: DXImageTransform.Microsoft.Alpha(Opacity=100);
            opacity: 1;
        } */

        /* Base styles for the element that has a tooltip */
        [data-tooltip],
        .tooltip {
            position: relative;
            cursor: pointer;
        }

        /* Base styles for the entire tooltip */
        [data-tooltip]:before,
        [data-tooltip]:after,
        .tooltip:before,
        .tooltip:after {
            position: absolute;
            visibility: hidden;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
            filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
            opacity: 0;
            -webkit-transition:
                opacity 0.2s ease-in-out,
                visibility 0.2s ease-in-out,
                -webkit-transform 0.2s cubic-bezier(0.71, 1.7, 0.77, 1.24);
            -moz-transition:
                opacity 0.2s ease-in-out,
                visibility 0.2s ease-in-out,
                -moz-transform 0.2s cubic-bezier(0.71, 1.7, 0.77, 1.24);
            transition:
                opacity 0.2s ease-in-out,
                visibility 0.2s ease-in-out,
                transform 0.2s cubic-bezier(0.71, 1.7, 0.77, 1.24);
            -webkit-transform: translate3d(0, 0, 0);
            -moz-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
            pointer-events: none;
        }

        /* Show the entire tooltip on hover and focus */
        [data-tooltip]:hover:before,
        [data-tooltip]:hover:after,
        [data-tooltip]:focus:before,
        [data-tooltip]:focus:after,
        .tooltip:hover:before,
        .tooltip:hover:after,
        .tooltip:focus:before,
        .tooltip:focus:after {
            visibility: visible;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
            filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100);
            opacity: 1;
        }

        /* Base styles for the tooltip's directional arrow */
        .tooltip:before,
        [data-tooltip]:before {
            z-index: 1001;
            border: 6px solid transparent;
            background: transparent;
            content: "";
        }

        /* Base styles for the tooltip's content area */
        .tooltip:after,
        [data-tooltip]:after {
            z-index: 1000;
            padding: 8px;
            width: 130px;
            background-color: #000;
            background-color: hsla(0, 0%, 20%, 0.9);
            color: #fff;
            content: attr(data-tooltip);
            font-size: 14px;
            line-height: 1.2;
        }

        /* Directions */

        /* Top (default) */
        [data-tooltip]:before,
        [data-tooltip]:after,
        .tooltip:before,
        .tooltip:after,
        .tooltip-top:before,
        .tooltip-top:after {
            bottom: 100%;
            left: 50%;
        }

        [data-tooltip]:before,
        .tooltip:before,
        .tooltip-top:before {
            margin-left: -6px;
            margin-bottom: -12px;
            border-top-color: #000;
            border-top-color: hsla(0, 0%, 20%, 0.9);
        }

        /* Horizontally align top/bottom tooltips */
        [data-tooltip]:after,
        .tooltip:after,
        .tooltip-top:after {
            margin-left: -80px;
        }

        [data-tooltip]:hover:before,
        [data-tooltip]:hover:after,
        [data-tooltip]:focus:before,
        [data-tooltip]:focus:after,
        .tooltip:hover:before,
        .tooltip:hover:after,
        .tooltip:focus:before,
        .tooltip:focus:after,
        .tooltip-top:hover:before,
        .tooltip-top:hover:after,
        .tooltip-top:focus:before,
        .tooltip-top:focus:after {
            -webkit-transform: translateY(-12px);
            -moz-transform: translateY(-12px);
            transform: translateY(-12px);
        }

        /* Left */
        .tooltip-left:before,
        .tooltip-left:after {
            right: 100%;
            bottom: 50%;
            left: auto;
        }

        .tooltip-left:before {
            margin-left: 0;
            margin-right: -12px;
            margin-bottom: 0;
            border-top-color: transparent;
            border-left-color: #000;
            border-left-color: hsla(0, 0%, 20%, 0.9);
        }

        .tooltip-left:hover:before,
        .tooltip-left:hover:after,
        .tooltip-left:focus:before,
        .tooltip-left:focus:after {
            -webkit-transform: translateX(-12px);
            -moz-transform: translateX(-12px);
            transform: translateX(-12px);
        }

        /* Bottom */
        .tooltip-bottom:before,
        .tooltip-bottom:after {
            top: 100%;
            bottom: auto;
            left: 50%;
        }

        .tooltip-bottom:before {
            margin-top: -12px;
            margin-bottom: 0;
            border-top-color: transparent;
            border-bottom-color: #000;
            border-bottom-color: hsla(0, 0%, 20%, 0.9);
        }

        .tooltip-bottom:hover:before,
        .tooltip-bottom:hover:after,
        .tooltip-bottom:focus:before,
        .tooltip-bottom:focus:after {
            -webkit-transform: translateY(12px);
            -moz-transform: translateY(12px);
            transform: translateY(12px);
        }

        /* Right */
        .tooltip-right:before,
        .tooltip-right:after {
            bottom: 50%;
            left: 100%;
        }

        .tooltip-right:before {
            margin-bottom: 0;
            margin-left: -12px;
            border-top-color: transparent;
            border-right-color: #000;
            border-right-color: hsla(0, 0%, 20%, 0.9);
        }

        .tooltip-right:hover:before,
        .tooltip-right:hover:after,
        .tooltip-right:focus:before,
        .tooltip-right:focus:after {
            -webkit-transform: translateX(12px);
            -moz-transform: translateX(12px);
            transform: translateX(12px);
        }

        /* Move directional arrows down a bit for left/right tooltips */
        .tooltip-left:before,
        .tooltip-right:before {
            top: 3px;
        }

        /* Vertically center tooltip content for left/right tooltips */
        .tooltip-left:after,
        .tooltip-right:after {
            margin-left: 0;
            margin-bottom: -16px;
        }


        .input-group-prepend {
            position: absolute;
            right: 7px;
            top: 13px;
            bottom: 4px;

        }
    </style>

</head>

<body>

    <div class="limiter">
        <div class="container-login100" style="background:#5b9aeb">
            <div class="wrap-login100 p-t-80">
                <form id="frmLogin" method="post" action="<?php echo base_url('front/login'); ?>" autocomplete="off">
                    <div class="login100-form validate-form">
                        <div class="login100-form-avatar">
                            <img src="<?php echo base_url(); ?>assets/Login_v12/images/logo-smk-Krian-1.png" alt="AVATAR">
                        </div>

                        <span class="login100-form-title p-t-20 p-b-45">
                            SMK KRIAN 1 SIDOARJO
                        </span>

                        <div class="wrap-input100 validate-input m-b-10" data-validate="Masukan Username">
                            <input class="input100" id="txtUser" type="text" name="username" placeholder="Username">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" data-validate="Masukkan Password">
                            <input class="input100" id="pass" type="password" name="password" placeholder="Password">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock"></i>
                            </span>

                            <span class="input-group-prepend tooltip-right" data-tooltip="Lihat Password">
                                <input type="checkbox" id="show" class="flat-red">
                            </span>

                        </div>

                        <div class="container-login100-form-btn p-t-10">
                            <button style="display:none;" type="submit" id="btnLogin" class="login100-form-btn text-center">
                                Login
                            </button>
                        </div>

                </form>

                <div class="container-login100-form-btn p-t-10">
                    <span id="btnLoginTriger" style="color: white;" class="login100-form-btn text-center">
                        Login
                    </span>
                </div>

                <div class="text-center w-full p-t-25 p-b-230">

                </div>

                <!-- <div class="text-center w-full">
						<a class="txt1" href="#">
							Create new account
							<i class="fa fa-long-arrow-right"></i>
						</a>
				</div> -->
            </div>
        </div>
    </div>
    </div>




    <!--===============================================================================================-->
    <script src="<?php echo base_url(); ?>assets/template/bower_components/jquery/dist/jquery.min.js"></script>
    <!--===============================================================================================-->
    <script src="<?php echo base_url(); ?>assets/Login_v12/vendor/bootstrap/js/popper.js"></script>
    <script src="<?php echo base_url(); ?>assets/Login_v12/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="<?php echo base_url(); ?>assets/Login_v12/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="<?php echo base_url(); ?>assets/Login_v12/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/zebra_pin@2.0.0/dist/zebra_pin.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/zebra_dialog@latest/dist/zebra_dialog.min.js"></script>

    <!-- iCheck 1.0.1 -->
    <script src="<?php echo base_url(); ?>assets/template/plugins/iCheck/icheck.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#show').on('ifChecked', function(event) {
                $('#pass').attr('type', 'text');
            });

            $('#show').on('ifUnchecked', function(event) {
                $('#pass').attr('type', 'password');
            });



            $('#pass').focus(function() {
                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url() . 'welcome/ajaxUsername' ?>",
                    data: $('#frmLogin').serialize(),
                    dataType: "text",
                    success: function(msg) {
                        if (msg == 'f') {
                            new $.Zebra_Dialog('Username Belum Terdaftar', {
                                auto_focus_button: $('body.materialize').length ? false : true,
                                title: 'Username Error',
                                type: 'error',
                                onClose: function(caption, prompt) {
                                    $('#txtUser').val('');
                                    $('#txtUser').focus();
                                }
                            });
                        }

                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        alert(errorThrown);
                    }
                });
            });

            $('#btnLoginTriger').click(function() {
                var usr = $('#txtUser').val();
                var pas = $('#pass').val();
                if (usr != null && pas != null && usr != '' && pas != '') {
                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url() . 'welcome/ajaxPassword' ?>",
                        data: $('#frmLogin').serialize(),
                        dataType: "text",
                        cache: false,
                        success: function(msg) {
                            if (msg == 'f') {
                                new $.Zebra_Dialog('Password yang Anda Masukkan salah', {
                                    auto_focus_button: $('body.materialize').length ? false : true,
                                    title: 'Password Error',
                                    type: 'error',
                                    onClose: function(caption, prompt) {
                                        $('#pass').val('');
                                        $('#pass').focus();
                                    }
                                });

                            } else {
                                $('#btnLogin').click();
                            }
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            alert(errorThrown + usr + pas);
                        }
                    });
                } else {
                    new $.Zebra_Dialog('Mohon masukan Username dan Password ', {
                        auto_focus_button: $('body.materialize').length ? false : true,
                        title: 'Data Error',
                        type: 'error',
                        onClose: function(caption, prompt) {
                            $('#txtUser').val('');
                            $('#txtUser').focus();
                        }
                    });
                }

            });




        });

        $(function() {
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-purple',
                radioClass: 'iradio_flat-green'
            })
        })
    </script>


</body>

</html>