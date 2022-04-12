function selectEstado(){

    //url do API e token para acesso
    let url = 'http://localhost:8080/public/api/v1/estados/lista'
    
    //instanciamento da função XMLHttpRequest()
    let dados = new XMLHttpRequest();

    //abrir o acesso aos dados obtidos no url do API
    dados.open('GET', url)

    dados.onreadystatechange = () => {
        if(dados.readyState == 4  && dados.status == 200){

            //declarar variáveis de url responseText
            let dadosJSONText = dados.responseText
            //construindo um objeto JSON
            let dadosJSONObj = JSON.parse(dadosJSONText)
            // listar dados do JSON carregado
            let estado = ''
                for( let i in dadosJSONObj ){
                    //console.log(dados_estado)
                    estado += '<option value="'+ dadosJSONObj[i].uf +'">'+ dadosJSONObj[i].estado + '</option>'
                }
                
            //listar no select da página os dados encontrados e listados do API no JSON
            let select = document.getElementById('estado')
                select.innerHTML = estado
        }
    }
    dados.send()
}   

function selectMunicipios(){

    let filtro = document.getElementById('estado').value
    
    //url do API e token para acesso
    let url = 'http://localhost:8080/public/api/v1/municipios/lista'
    
    //instanciamento da função XMLHttpRequest()
    let dados = new XMLHttpRequest();

    //abrir o acesso aos dados obtidos no url do API
    dados.open('GET', url)

    dados.onreadystatechange = () => {
        if(dados.readyState == 4  && dados.status == 200){

            //declarar variáveis de url responseText
            let dadosJSONText = dados.responseText

            //construindo um objeto JSON
            let dadosJSONObj = JSON.parse(dadosJSONText)

            // listar dados do JSON carregado
            let municipio = ''
                for( let i in dadosJSONObj ){
                    if(dadosJSONObj[i].uf == filtro ){
                        municipio += '<option value="'+ dadosJSONObj[i].municipio +'">'+ dadosJSONObj[i].municipio + '</option>'
                    }
                }
                
            //listar no select da página os dados encontrados e listados do API no JSON
            let select = document.getElementById('municipio')
                select.innerHTML = municipio
        }
    }
    dados.send()
}   
