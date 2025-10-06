# Configuración de Git, VS Code y GitHub / Git, VS Code and GitHub Configuration

## 🇪🇸 Español

### Objetivo
Configurar **Git** y **VS Code** para trabajar de forma segura con **GitHub**, usando **SSH** y preparando el entorno para **GitHub Actions**.  

### Configuración de Git
- Se definió el nombre y correo del usuario para los commits.  
- Git registra correctamente la autoría de los cambios.  

### Autenticación SSH
- Se generó una **clave SSH ed25519**.  
- La clave privada se mantiene localmente y la pública se agregó a GitHub.  
- Se configuró el **agente SSH** para carga automática.  
- Se puede hacer push/pull sin contraseñas.  

### Configuración de VS Code
- Se instaló la extensión **GitHub Pull Requests and Issues**.  
- VS Code quedó integrado con GitHub mediante SSH.  

### Buenas prácticas
- Uso de **SSH** en lugar de **HTTPS con contraseña**.  
- Manejo de secretos en **GitHub Actions**.  
- Archivos sensibles protegidos con **.gitignore**.  
- **Commits atómicos y claros**.  

**Estado:** Entorno de desarrollo seguro y listo para CI/CD.  

---

## 🇬🇧 English

### Objective
Configure **Git** and **VS Code** to work securely with **GitHub** using **SSH authentication**, preparing the environment for **GitHub Actions**.  

### Git configuration
- Set user name and email for commit authorship.  
- Git now correctly records user information in repositories.  

### SSH authentication
- Generated an **ed25519 SSH key** for secure authentication.  
- The **private key** remains local, and the **public key** was added to GitHub.  
- Configured the **SSH agent** for automatic key management.  
- Push/pull/clone operations now work without passwords.  

### VS Code configuration
- Installed the **GitHub Pull Requests and Issues** extension.  
- VS Code is integrated with GitHub via SSH.  

### Best practices
- Use **SSH** instead of **HTTPS with passwords**.  
- Use **GitHub Actions secrets** to store credentials safely.  
- Protect sensitive files with **.gitignore**.  
- Write **atomic and clear commits**.  

**Status:** Development environment secure and ready for CI/CD integration.
