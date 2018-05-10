jQuery(function ($) {
    $('.tabs a[tabid=1]').click(function () {
        $('.tabs a[tabid=101]').click();
    });

    $('.tabs a[tabid=4]').click(function () {
        $('.tabs a[tabid=401]').click();
    });

    $('.tabs a').on('click', function () {
        $('#sett_tabid').val($(this).attr('tabid'));
        location.hash = $(this).attr('tabid');
    });

    // Remove the # from the hash, as different browsers may or may not include it
    var hash = location.hash.replace('#', '');

    if (hash != '') {
        hash = parseInt(hash);
        $('.tabs a[tabid=' + Math.floor(hash / 100) + ']').click();
        $('.tabs a[tabid=' + hash + ']').click();
    } else {
        $('.tabs a[tabid=1]').click();
    }

    $('input[name="search_all_cf"]').change(function () {
        if ($(this).val() == 1)
            $('input[name="customfields"]').parent().addClass('disabled');
        else
            $('input[name="customfields"]').parent().removeClass('disabled');
    });
    $('input[name="search_all_cf"]').change();

    function check_redirect_url() {
        var click = $('select[name="redirect_click_to"]').val();
        var enter = $('select[name="redirect_enter_to"]').val();
        if (
            ( click == 'custom_url' ) ||
            ( enter == 'custom_url' )
        ) {
            $('input[name="custom_redirect_url"]').parent().removeClass('disabled');
        } else {
            $('input[name="custom_redirect_url"]').parent().addClass('disabled');
        }

        if ( click == 'ajax_search' || click == 'nothing' ) {
            $('select[name=click_action_location]').parent().addClass('hiddend');
        } else {
            $('select[name=click_action_location]').parent().removeClass('hiddend');
        }
        if ( enter == 'ajax_search' || enter == 'nothing' ) {
            $('select[name=return_action_location]').parent().addClass('hiddend');
        } else {
            $('select[name=return_action_location]').parent().removeClass('hiddend');
        }
    }

    $('select[name="redirect_click_to"]').change(check_redirect_url);
    $('select[name="redirect_enter_to"]').change(check_redirect_url);
    check_redirect_url();

    // Primary and Secondary fields for custom fields
    $.each(['titlefield', 'descriptionfield'],
        function(i, v){
            $("select[name='"+v+"']").change(function(){
                if ( $(this).val() != 'c__f' ) {
                    $("input[name='"+v+"_cf']").parent().css("display", "none");
                } else {
                    $("input[name='"+v+"_cf']").parent().css("display", "");
                }
            });
            $("select[name='"+v+"']").change();
        });
});