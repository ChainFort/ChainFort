# AWS S3 & Identity Center Setup / Configuración de AWS S3 e Identity Center

---

## 🇬🇧 English

### Project Goal
Host a secure static website on **AWS S3** and manage access using **AWS Identity Center (SSO)** with fine-grained permissions.

### Steps Overview

#### 1. Create S3 Bucket
- Enable **Static Website Hosting**.  
- Upload **HTML, CSS, and JS files**.

#### 2. Identity Center Setup
- Create groups: **Developers, Auditors, Product-Owners**.  
- Create users for each group.

#### 3. Permission Sets (Roles)
- **Developers:** can list, read, and upload files to the bucket, cannot delete.  
- **Auditors:** read-only access to the bucket.  
- **Product-Owners:** full access to the bucket.  
- All permissions are restricted to the specific bucket: `mi-pagina-gratis-aws`.

#### 4. Assign Permission Sets
- Map each group to its corresponding Permission Set.  
- Users inherit permissions when they log in via Identity Center.

#### 5. Access Methods
- **CLI:** users can upload, list, and download files according to their permissions.  
- **Console:**  
  - Developers and Product-Owners can optionally list the bucket using `s3:ListAllMyBuckets`.  
  - Auditors can access the bucket via direct URL if listing all buckets is not allowed.

#### 6. Security Notes
- Only necessary actions are allowed for each group (**principle of least privilege**).  
- Deletion is restricted for Developers.  
- Only the target bucket is accessible; other buckets remain hidden.

---

## 🇪🇸 Español

### Objetivo del Proyecto
Alojar un **sitio web estático seguro** en **AWS S3** y gestionar el acceso usando **AWS Identity Center (SSO)** con permisos específicos y controlados.

### Resumen de los Pasos

#### 1. Crear Bucket S3
- Habilitar **Static Website Hosting**.  
- Subir archivos **HTML, CSS y JS**.

#### 2. Configuración de Identity Center
- Crear grupos: **Developers, Auditors, Product-Owners**.  
- Crear usuarios para cada grupo.

#### 3. Permission Sets (Roles)
- **Developers:** pueden listar, leer y subir archivos, no pueden eliminar.  
- **Auditors:** acceso solo lectura al bucket.  
- **Product-Owners:** acceso completo al bucket.  
- Todos los permisos están limitados al bucket específico: `mi-pagina-gratis-aws`.

#### 4. Asignar Permission Sets
- Asignar cada grupo a su **Permission Set** correspondiente.  
- Los usuarios heredan permisos al iniciar sesión vía Identity Center.

#### 5. Métodos de Acceso
- **CLI:** los usuarios pueden subir, listar y descargar archivos según sus permisos.  
- **Consola:**  
  - Developers y Product-Owners pueden listar el bucket usando `s3:ListAllMyBuckets` si se desea.  
  - Auditors pueden acceder al bucket mediante URL directa si no se permite listar todos los buckets.

#### 6. Notas de Seguridad
- Solo se permiten las acciones necesarias para cada grupo (**principio de mínimo privilegio**).  
- Los Developers no pueden eliminar archivos.  
- Solo el bucket objetivo es accesible; los demás buckets permanecen ocultos.
