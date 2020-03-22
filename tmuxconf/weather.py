#!/usr/bin/env python

import requests

from bs4 import BeautifulSoup

URL = 'https://www.meteored.com.ar/tiempo-en_Mendoza-America+Sur-Argentina-Mendoza-SAME-1-16887.html'
page = requests.get(URL)
soup = BeautifulSoup(page.content, 'html.parser')
clima = soup.find('span', class_='estado').find('strong').text.strip().encode('ascii', 'ignore')
temperatura = soup.find('span', class_='dato-temperatura').text.strip().encode('ascii', 'ignore')

print('{clima} - {temperatura}'.format(clima=clima, temperatura=temperatura))
