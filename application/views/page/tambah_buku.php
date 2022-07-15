<?php
$query = $this->db->query("select * from buku order by id_buku desc limit 1");
$result = $query->result();
$idBuku = '';
foreach ($query->result() as $row) {
    $idBuku = $row->id_buku;
}
$rest = substr($idBuku, 1);
$increment = (int) $rest + 1;

$fix = 'B' . $increment;

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Tambah Buku
            <small></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-users"></i> Buku</a></li>
            <li class="active"> Tambah Buku</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title"> Tambah Buku</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                </div>
            </div>

            <!-- Start Data Table User -->
            <div class="box-body">
                <form method="post" action="<?php echo base_url('buku/insertBuku'); ?>">
                    <div class="form-group">
                        <label>ID Buku</label>
                        <input type="text" readonly class="form-control" id="idbuku" name="idbuku" value="<?php echo $fix; ?>">
                    </div>
                    <div class="form-group">
                        <label>Judul Buku</label>
                        <input type="text" class="form-control" id="judul" name="judul">
                    </div>
                    <div class="form-group">
                        <label>Pengarang</label>
                        <input type="text" class="form-control" id="pengarang" name="pengarang">
                    </div>
                    <div class="form-group">
                        <label>penerbit</label>
                        <input type="text" class="form-control" id="penerbit" name="penerbit">
                    </div>
                    <div class="form-group">
                        <label>Tahun Terbit</label>
                        <input type="text" class="form-control" id="tahun" name="tahun">
                    </div>

                    <div class="form-group">
                        <label>Status</label>
                        <select class="form-control" name="status" id="status">
                            <option id="ada" value="ada">Ada</option>
                            <option id="dipinjam" value="dipinjam">Dipinjam</option>
                        </select>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-info btn-xl" data-dismiss="modal">Simpan</button>
                    </div>
                </form>
            </div>
            <!-- end Data Table User -->

            <div class="box-footer">

            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->

    </section>
    <!-- /.content -->
    <!-- modal detail user -->
    <!-- <div class="box-body">
        <button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target="#modal-detail3"><i class="fa fa-external-link"></i>
        </button>
    </div> -->

    <!-- end modal deatail -->
</div>
<!-- /.content-wrapper -->








































<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> edit
    </div>
    <strong>Copyright &copy; 2019 <a href="#">Zharvi Achmadha</a>.</strong> All rights
    reserved.
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
        <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
        <!-- Home tab content -->
        <div class="tab-pane" id="control-sidebar-home-tab">
            <h3 class="control-sidebar-heading">Recent Activity</h3>
            <ul class="control-sidebar-menu">
                <li>
                    <a href="javascript:void(0)">
                        <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                        <div class="menu-info">
                            <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                            <p>Will be 23 on April 24th</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <i class="menu-icon fa fa-user bg-yellow"></i>

                        <div class="menu-info">
                            <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                            <p>New phone +1(800)555-1234</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                        <div class="menu-info">
                            <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                            <p>nora@example.com</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <i class="menu-icon fa fa-file-code-o bg-green"></i>

                        <div class="menu-info">
                            <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                            <p>Execution time 5 seconds</p>
                        </div>
                    </a>
                </li>
            </ul>
            <!-- /.control-sidebar-menu -->

            <h3 class="control-sidebar-heading">Tasks Progress</h3>
            <ul class="control-sidebar-menu">
                <li>
                    <a href="javascript:void(0)">
                        <h4 class="control-sidebar-subheading">
                            Custom Template Design
                            <span class="label label-danger pull-right">70%</span>
                        </h4>

                        <div class="progress progress-xxs">
                            <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <h4 class="control-sidebar-subheading">
                            Update Resume
                            <span class="label label-success pull-right">95%</span>
                        </h4>

                        <div class="progress progress-xxs">
                            <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <h4 class="control-sidebar-subheading">
                            Laravel Integration
                            <span class="label label-warning pull-right">50%</span>
                        </h4>

                        <div class="progress progress-xxs">
                            <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <h4 class="control-sidebar-subheading">
                            Back End Framework
                            <span class="label label-primary pull-right">68%</span>
                        </h4>

                        <div class="progress progress-xxs">
                            <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                        </div>
                    </a>
                </li>
            </ul>
            <!-- /.control-sidebar-menu -->

        </div>
        <!-- /.tab-pane -->
        <!-- Stats tab content -->
        <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
        <!-- /.tab-pane -->
        <!-- Settings tab content -->

        <!-- /.tab-pane -->
    </div>
</aside>
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- InputMask -->
<script src="<?php echo base_url(); ?>assets/template/plugins/input-mask/jquery.inputmask.js"></script>
<script src="<?php echo base_url(); ?>assets/template/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="<?php echo base_url(); ?>assets/template/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/moment/min/moment.min.js"></script>
<script src="<?php echo base_url(); ?>assets/template/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="<?php echo base_url(); ?>assets/template/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="<?php echo base_url(); ?>assets/template/plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/template/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/template/dist/js/demo.js"></script>
<script src="<?php echo base_url(); ?>assets/template/plugins/switch/js/bootstrap-toggle.js"></script>
<!-- Page script -->
<!-- <script src="<?php echo base_url(); ?>assets/template/dist/bs-stepper/dist/js/bs-stepper.min.js"></script> -->
<script src="<?php echo base_url(); ?>assets/template/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/template/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script>
    $(document).ready(function() {
        $('.sidebar-menu').tree();
    })
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()

        //Datemask dd/mm/yyyy
        $('#datemask').inputmask('dd/mm/yyyy', {
            'placeholder': 'dd/mm/yyyy'
        })
        //Datemask2 mm/dd/yyyy
        $('#datemask2').inputmask('mm/dd/yyyy', {
            'placeholder': 'mm/dd/yyyy'
        })
        //Money Euro
        $('[data-mask]').inputmask()

        //Date range picker
        $('#reservation').daterangepicker()
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({
            timePicker: true,
            timePickerIncrement: 30,
            locale: {
                format: 'MM/DD/YYYY hh:mm A'
            }
        })
        //Date range as a button
        $('#daterange-btn').daterangepicker({
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1,
                        'month').endOf(
                        'month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate: moment()
            },
            function(start, end) {
                $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format(
                    'MMMM D, YYYY'))
            }
        )

        //Date picker
        $('#datepicker').datepicker({
            autoclose: true
        })

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        })
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
            checkboxClass: 'icheckbox_minimal-red',
            radioClass: 'iradio_minimal-red'
        })
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
            checkboxClass: 'icheckbox_flat-green',
            radioClass: 'iradio_flat-green'
        })

        //Colorpicker
        $('.my-colorpicker1').colorpicker()
        //color picker with addon
        $('.my-colorpicker2').colorpicker()

        //Timepicker
        $('.timepicker').timepicker({
            showInputs: false
        })
        $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings) {
            return {
                "iStart": oSettings._iDisplayStart,
                "iEnd": oSettings.fnDisplayEnd(),
                "iLength": oSettings._iDisplayLength,
                "iTotal": oSettings.fnRecordsTotal(),
                "iFilteredTotal": oSettings.fnRecordsDisplay(),
                "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
                "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
            };
        };

        var table = $("#mytable").dataTable({
            initComplete: function() {
                var api = this.api();
                $('#mytable_filter input')
                    .off('.DT')
                    .on('input.DT', function() {
                        api.search(this.value).draw();
                    });
            },
            oLanguage: {
                sProcessing: '<p style="color: green"><i class="fa fa-cog fa-spin fa-3x fa-fw"></i></p><span class="sr-only">Loading…</span>'
            },
            search: {
                "caseInsensitive": false
            },
            responsive: true,
            autoWidth: false,
            pageLength: 100,
            processing: true,
            serverSide: true,
            ajax: {
                "url": "<?php echo base_url() . 'buku/get_guest_json' ?>",
                "type": "POST"
            },
            columns: [{
                    "data": "id_buku"
                },
                {
                    "data": "judul_buku"
                },
                {
                    "data": "pengarang"
                },
                {
                    "data": "penerbit"
                },
                {
                    "data": "tahun_terbit"
                },
                {
                    "data": "status"
                },
                {
                    "data": "view"
                }

            ],

            order: [
                [1, 'asc']
            ],
            // fnDrawCallback: function() {
            //     $('.toggle-demo').bootstrapToggle();
            // },
            rowCallback: function(row, data, iDisplayIndex) {
                var info = this.fnPagingInfo();
                var page = info.iPage;
                var length = info.iLength;
                $('td:eq(0)', row).html();
            }

        });


        // $('#mytable').on('change', '.toggle-demo', function() {
        //     var id = $(this).data('id');
        //     var param = $(this).data('param');
        //     $.ajax({
        //         url: "<?php echo base_url(); ?>users/edit_password_expired",
        //         method: "POST",
        //         dataType: 'json',
        //         data: {
        //             id: id,
        //             param: param
        //         },
        //         success: function(data) {
        //             if (data == 1) {
        //                 $('#mytable').DataTable().ajax.reload();
        //             }
        //         }
        //     });
        // });


        $('#mytable').on('click', '.edit', function() {
            var id = $(this).data('id');
            var judul = $(this).data('judul');
            var pengarang = $(this).data('pengarang');
            var penerbit = $(this).data('penerbit');
            var tahun = $(this).data('tahun');
            var status = $(this).data('status');



            $("#idbuku").val(id);
            $("#judul").val(judul);
            $("#pengarang").val(pengarang);
            $("#penerbit").val(penerbit);
            $("#tahun").val(tahun);

            if (status == 'Ada') {
                $("#ada").prop('selected', true);
            } else if (status == "dipinjam") {
                $("#dipinjam").prop('selected', true);

            }


            $('#modal-detail').modal('show');

        });

        // $('#mytable').on('click', '.edit', function() {
        //     var id = $(this).data('id');
        //     window.location.assign("<?php echo base_url() . 'users/editUser?param=' ?>" + id);
        // });

    })
</script>
</body>

</html>