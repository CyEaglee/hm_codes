import requests

def ScanSubdominios():
    cont = 0
    url = input("Insira o link do site (ex.: https://www.example.com): ")
    print("\n")
    fix_um_url = url.split("//")
    fix_dois_url = fix_um_url[1].split(".")
    del fix_dois_url[0]
    with open ("subdomains-top1million-5000.txt", "r") as subdom_list:
        for subdom in subdom_list:
            cont += 1
            try:
                req = requests.get(f'{fix_um_url[0]}//{subdom[:-1:]}.{'.'.join(fix_dois_url)}')
                print(f">>>>>>>>>> {subdom[:-1:]}: {req.status_code}")
            except:
                print(f"{subdom[:-1:]}: erro")
            if cont == 20:
                print("\n")
                break
             
ScanSubdominios()