$("#btn_gravar").on("click", function() {
    
    var txt_nome = $("#nome").val();
    var txt_email = $("#email").val();
    var txt_mensagem = $("#mensagem").val(); 

    $.ajax({
        url: "localhost:30005", 
        type: "post",
        data: {nome: txt_nome, email: txt_email, mensagem: txt_mensagem},
        beforeSend: function() {
            $("#resposta").html("Enviando......");
        }
    }).done(function(e) {
        $("#resposta").html("Dados salvos......");
    })

})
