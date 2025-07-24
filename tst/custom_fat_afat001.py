from tir import Webapp
from datetime import datetime
import unittest
import time

DataSystem = datetime.today().strftime('%d/%m/%Y')

teste_fat = Webapp()
teste_fat.Setup('SIGAFAT', DataSystem, '99', '01', '05')
teste_fat.Program("AFAT001")
teste_fat.SetButton("Incluir")
teste_fat.SetValue("Z01_DESC", "TESTE MULHER INCRIVEL")
teste_fat.SetValue("Z01_TIPO", "1")
teste_fat.TearDown()
