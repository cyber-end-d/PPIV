type Descripcion = String
type AnioPublicacion = Int

type Nombre = String
type Apellido = String
type FechaNac = String
type DNI = Int

data Genero = Policial Descripcion
            | Drama Descripcion AnioPublicacion
			deriving (Show)

data Cliente = Cliente Nombre Apellido FechaNac DNI
             deriving(Show)

genero1 = Policial "Este genero es el genero policial"

getDescripcion (Policial descripcion) = descripcion
getDescripcion (Drama descripcion _) = descripcion

getApellido (Cliente _ apellido _ _) = apellido
getNombre (Cliente nombre _ _ _) = nombre
getFechaNac (Cliente _ _ fechaNac _) = fechaNac
getDNI (Cliente _ _ _ dni) = dni

