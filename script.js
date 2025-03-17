// Função para obter os concelhos da bd em formato JSON e preencher o select
function loadConcelhos() {
    fetch('get_concelhos.php')   // Endpoint para obter os concelhos
        .then(response => response.json()) // Converter a resposta para JSON
        .then(data => {
            const select = document.getElementById('concelho'); // Obter o elemento select
            data.forEach(concelho => {
                const option = document.createElement('option'); 
                option.value = concelho.nome;
                option.textContent = concelho.nome;
                select.appendChild(option);
            });
        })
        .catch(error => console.error('Erro ao obter concelhos:', error));
}

// Carregar concelhos ao carregar a página
document.addEventListener('DOMContentLoaded', loadConcelhos);