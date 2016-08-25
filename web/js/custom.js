$('.filter-select').on('change', function(){

    reloadData(1);

})

$(document).on('click', 'ul.pagination li', function(){

    if($(this).hasClass('disabled')){
        return false;
    }
    reloadData($(this).data('id'));

})

function reloadData(page){
    var type_sort = $('#type-sort').val();
    var date_sort = $('#date-sort').val();
    $.ajax({
        url: '/filter',
        type: 'post',
        data: {type: type_sort, date:date_sort, page:page},
        dataType: 'json',
        success: function(response){
            $('.results').html(response.result_html);
            $('.paging').html(response.pagination_html);
        }
    })
}