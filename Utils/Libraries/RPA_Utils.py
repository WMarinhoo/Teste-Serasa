import unicodedata
import re
import random
import math
from typing import Optional, Union
import string
from SeleniumLibrary.base import LibraryComponent, keyword
from selenium.webdriver.chrome.options import Options

subs_com_escape =  '[^a-zA-Z0-9 \\\\s{0}]'
subs_sem_escape =  '[^a-zA-Z0-9 \\\]'
estrutura_placa =  '^[a-zA-Z]{3}[0-9][A-Za-z0-9][0-9]{2}$'
padrao_5_digito =  '^[a-jA-J]'
numerico        =  '^[0-9]'
so_letras       =  '^[a-zA-Z]'


conversor = {
    "0":"A",
    "1":"B",
    "2":"C",
    "3":"D",
    "4":"E",
    "5":"F",
    "6":"G",
    "7":"H",
    "8":"I",
    "9":"J"
}

desconversor = {
    "A":"0",
    "B":"1",
    "C":"2",
    "D":"3",
    "E":"4",
    "F":"5",
    "G":"6",
    "H":"7",
    "I":"8",
    "J":"9"
}

caracteres_especiais = [
    "*","/","-",".",",","?","~","[","]","{","}","^",">","<",";",":","!","@","#","$","%","&","(",")","="
]

@keyword
def GeraFraseEmString(palavra: str, escape: Optional[str] = None):
    a = removerAcentosECaracteresEspeciais(palavra, escape)
    a = TransformaEmUpperCase(a)
    a = TrocaEspacoPorCaracter(a, " ", "_")
    return a

@keyword
def removerAcentosECaracteresEspeciais(palavra: str, escape: Optional[str] = None):

    normalizada = unicodedata.normalize("NFD", palavra).encode("ascii", "ignore").decode("utf-8")
    palavraSemAcento = u"".join([c for c in normalizada if not unicodedata.combining(c)])
    
    if escape: 
        
        return re.sub(subs_com_escape.format(escape), '', palavraSemAcento)
    else:    
        return re.sub(subs_com_escape, '', palavraSemAcento)

@keyword
def TransformaEmUpperCase(palavra: str):
    return palavra.upper()

@keyword
def TransformaEmLowerCase(palavra: str):
    return palavra.lower()

@keyword
def TrocaEspacoPorCaracter(palavra: str, tirar:str, colocar:str):
    return palavra.replace(tirar, colocar)

@keyword
def TiraEspaco(palavra: str):
    return palavra.replace(" ", "")
