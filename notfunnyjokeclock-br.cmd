REM Todas as linhas iniciadas por "REM" sao comentarios.
REM O comando "@echo off" anula a exibicao automatica de comandos. 
@echo off
REM O comando abaixo permite determinar o tamanho da janela de comando.
mode CON:cols=40 lines=20
REM O comando "cls" limpa a janela de comandos.
cls
REM O comando "echo" permite escrever mensagens na janela de comandos.
REM O simbolo ">" permite redirecionar a saida de comandos para um arquivo de texto.
echo [notfunnyjoke clock] > notfunnyjokeclock.txt
echo.
echo.
echo.     Este eh o Contador Regressivo
echo.           Piada Sem Graca
echo.
echo.  [  por favor: naum use acentos, e ]
echo.   [ informe o tempo em segundos! ]
echo.
echo.
REM O comando "set" permite trabalhar com variaveis temporarias.
set /P _msgintro=Intro: 
set /P _msgfinal=Final: 
set /P _piadatmp=Tempo: 
set _hh=00
set _mm=00
set _ss=00
set _tt=00
REM Linhas em branco sao validas e ajudam a organizar o codigo

REM O simbolo ":" no inicio da linha permite criar etiquetas de codigo. (label)
:piadatimermainloop
@cls
@REM Calculos de conversao tempo.
@set /a "_tt=_piadatmp"
@set /a "_hh=_tt/3600"
@set /a "_tt=_tt-(_hh*3600)"
@set /a "_mm=_tt/60"
@set /a "_tt=_tt-(_mm*60)"
@set /a "_ss=_tt"
@REM Formatacao do tempo.
@set "_hh=0%_hh%"
@set "_mm=0%_mm%"
@set "_ss=0%_ss%"
@REM Trechos iniciados por :: saum uma forma naum documentada de comentarios
::@echo (P) %_msgintro% %_piadatmp%s
@echo (P) %_msgintro% %_hh:~-2%:%_mm:~-2%:%_ss:~-2%
@echo.%_msgintro% %_hh:~-2%:%_mm:~-2%:%_ss:~-2% > notfunnyjokeclock.txt
@REM O ping para endereco invalido e com a saida duplamente redirecionada
@REM eh um dos metodos mais economicos de processamento em batch para a
@REM contagem de tempo.
@ping 0.0.0.0 -n 2 > nul 2>&1
@REM Teste de comparacao entre o contador de tempo e o numero 1.
@REM Se o contador de tempo for menor que 1, o script pularah para
@REM a etiqueta ":gracequit" para ser finalizado.
@IF [%_piadatmp%] LSS [1] GOTO :gracequit
@set /a "_piadatmp=_piadatmp-1"
@GOTO :piadatimermainloop

:gracequit
@cls
@echo.%_msgfinal% > notfunnyjokeclock.txt
@echo.(P) %_msgfinal%
@ping 0.0.0.0 -n 2 > nul 2>&1
REM O comando "exit /b" permite o script fechar sem obrigatoriamente
REM fechar a janela do interpretador de comandos que o chamou.
REM Tal comando eh muito util durante a fase de testes e desenvolvimento
REM de scripts .bat/.cmd.
@exit /b
REM Todas as linhas iniciadas por "@" sao comandos "invisiveis".
@REM
@REM Este script eh livre para uso, estudo, modificacao, venda e compartilhamento.
@REM Naum hah nenhum impedimento tanto para distribuicao gratuita como
@REM para distribuicao comercial do mesmo. Todos sao livres para vende-lo
@REM como tambem para doah-lo. Faca bom uso e seja feliz! 
@REM
@REM Este script gera um arquivo de texto "notfunnyjokeclock.txt" que deve
@REM ser configurado no OBS em "Sources", "Text (GDI+)", "Read from file",
@REM "Browse". Execute o script e soh entaum selecione o arquivo, a fonte,
@REM a cor e demais opcoes. Naum hah qualquer tipo de instalacao e, no
@REM momento, acentos naum saum aceitos.
@REM
@REM Este script exibirah a mensagem inicial + um contador de tempo no
@REM no formato hh:mm:ss ateh o contador atingir o valor 0. Entao, ele
@REM exibirah a mensagem final e fecharah.
@REM
@REM Este script foi inspirado no comportamento exibido no video de 
@REM "ale xand" em 2014-06-14:
@REM           https://www.youtube.com/watch?v=3tnCT-UuBwE
@REM Porem, nao compartilha nenhum codigo com o trabalho do mesmo.
@REM
@REM          notfunnyjoke.cmd version 1.0 2017-12-20
@REM
REM Lista de enderecos uteis para criacao de scripts:
REM https://ss64.com/nt/
REM https://ss64.com/nt/syntax.html
REM https://ss64.com/nt/prompt.html
REM https://ss64.com/nt/set.html
REM https://ss64.com/nt/if.html
REM https://ss64.com/nt/syntax-macros.html
REM https://ss64.com/nt/syntax-loops.html
REM https://ss64.com/nt/mode.html
REM Comandos para exibir a pagina de codigo ativa:
REM     MODE CON CP /STATUS
REM     chcp