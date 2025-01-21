if [ "$#" -ne 2 ]; then
    echo "Usage: $0 nouveauFichier.txt contenu.txt"
    exit 1
fi

nouveauFichier=$1
contenuFichier=$2

if [ ! -f "$contenuFichier" ]; then
    echo "Le fichier $contenuFichier n'existe pas."
    exit 1
fi

cp "$contenuFichier" "$nouveauFichier"

echo "Le contenu de $contenuFichier a été copié dans $nouveauFichier."
