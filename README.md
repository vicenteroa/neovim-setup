
![941_1x_shots_so](https://github.com/user-attachments/assets/9b95bc88-9ffd-45bc-88c8-8f22d955a801)

## Instalación de DracoDen en Windows

¡Instala DracoDen en tu sistema con unos simples pasos! Sigue estas instrucciones para tener todo listo en minutos.
---

> **🔍 Nota:** Si te interesa ver cómo he configurado mis Dotfiles, puedes revisarlos en mi [repositorio de Dotfiles](https://github.com/vicenteroa/Dotfiles). ¡Ahí encontrarás todas las configuraciones y scripts adicionales que utilizo para mi entorno de desarrollo! 🚀

### 🀄 Instalación rápida con `install_DracoDen_setup.sh`

Si prefieres una instalación aún más rápida, puedes usar el instalador que he creado:

- Abre PowerShell como administrador y ejecuta:
  ```powershell
  curl -o install_DracoDen_setup.sh https://raw.githubusercontent.com/vicenteroa/neovim-setup/main/install_DracoDen_setup.sh
  bash install_DracoDen_setup.sh
  ```
### ⚙️ Paso 1: Configura Chocolatey
Chocolatey es un administrador de paquetes para Windows que facilita la instalación y gestión de software.

- Abre **PowerShell** como administrador.
- Ejecuta el siguiente comando para instalar Chocolatey:
  ```powershell
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  ```

### 🛠️ Paso 2: Instala las herramientas necesarias con Chocolatey
Con Chocolatey instalado, ahora puedes instalar las herramientas esenciales para DracoDen:

```powershell
choco install neovim ripgrep fd lazygit
```

### 🗂️ Paso 3: Prepara el entorno de Neovim
Asegúrate de que Neovim esté listo para DracoDen:

- Renombra las carpetas anteriores (si existen):
  ```powershell
  Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
  Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
  ```

### 🌀 Paso 4: Clona el repositorio de DracoDen
Clona tu configuración personalizada directamente en el directorio adecuado:

```powershell
git clone https://github.com/vicenteroa/neovim-setup $env:LOCALAPPDATA\nvim
```

### 🚀 Paso 5: ¡Inicia DracoDen!
Lanza Neovim con tu configuración personalizada:

```powershell
nvim
```

¡Listo! 🐉 ¡Disfruta de tu nuevo entorno de desarrollo con DracoDen!

---

