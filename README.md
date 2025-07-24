# ADVPL-MVC

Este repositório contém um projeto de exemplo utilizando **ADVPL** com estrutura modular inspirada no padrão **MVC (Model-View-Controller)**, integrando testes automatizados em Python.

## 📁 Estrutura do Projeto

```
advpl-mvc/
├── scr/                      # Código-fonte ADVPL
│   └── custom.fat.afat001.prw
├── tst/                      # Testes automatizados (em Python)
│   ├── __init__.py
│   └── custom_fat_afat001.py
├── .vscode/                  # Configurações de ambiente do VSCode
│   ├── launch.json
│   └── servers.json
├── config.json               # Arquivo de configuração do ambiente
└── .gitignore
```

## 🧪 Testes Automatizados

O projeto utiliza `pytest` para realizar testes em scripts ADVPL por meio de integração com emuladores ou mocks.

Para executar os testes, rode:

```bash
python tst/custom_fat_afat001.py --junitxml=custom_fat_afat001.xml
```

> Certifique-se de que o `config.json` esteja corretamente configurado com os caminhos e parâmetros do ambiente ADVPL.

## ⚙️ Pré-requisitos

- Python 3.8+
- VSCode com extensões de ADVPL
- Ambiente Protheus configurado
- [Totvs Dev Studio](https://tdn.totvs.com/) instalado (opcional)

## 🔧 Configuração do Ambiente

Edite o arquivo `config.json` para refletir o caminho do ambiente e os parâmetros de conexão com o servidor TOTVS.

Exemplo:

```json
{
	"version": "0.2.0",
	"configurations": [
		{
			"type": "totvs_language_web_debug",
			"request": "launch",
			"name": "Smart Client Web Debug",
			"program": "${command:AskForProgramName}",
			"isMultiSession": true,
			"enableTableSync": true,
			"smartclientUrl": "http://localhost:7108"
		}
	],
	"lastPrograms": [
		{
			"label": "SIGAFAT"
		}
	],
	"lastProgramExecuted": "SIGAFAT"
}
```

## 🚀 Executando no VSCode

1. Abra o projeto no VSCode.
2. Configure o servidor em `.vscode/servers.json`.
3. Utilize `launch.json` para compilar e debugar os fontes ADVPL.

## 📌 Observações

- Certifique-se de que a estrutura do Protheus esteja compatível com os fontes ADVPL desenvolvidos.
- Os arquivos `.prw` devem seguir convenções de nome e estrutura para correta integração com os testes.

## 📄 Licença

Este projeto é open-source e está sob a licença MIT. Sinta-se à vontade para contribuir!
