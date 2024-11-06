# BDCC-XML-ReleveBancaire
            <?xml version="1.0" encoding="UTF-8"?>
            <releve RIB="011112222333344445555666">
            <dateReleve>2021-11-10</dateReleve>
            <solde>14500</solde>
            <operations dateDebut="2021-01-01" dateFin="2021-01-30">
            <operation type="CREDIT" date="2021-01-01" montant="9000" description="Vers Espèce"></operation>
            <operation type="DEBIT" date="2021-01-11" montant="3400" desciption="Chèque Guichet"></operation>
            <operation type="DEBIT" date="2021-01-15" montant="120" desciption="Prélèvement Assurence"></operation>
            <operation type="CREDIT" date="2021-01-25" montant="70000" desciption="Virement .."></operation>
            </operations>
            </releve>
Travail demandé :
A. Partie Technologie XML :
1. Elaborer la structure graphique de l’arbre XML   
3. Créer un DTD qui permet de déclarer la structure de ce document XML et créer un
exemple de document XML valide par ce DTD
4. Créer un schéma XML qui permet de déclarer la structure de ce document XML et créer
un exemple de document XML valide par ce schéma XML
5. Créer une feuille de style XSL qui permet d’afficher les toutes les données de ce document
XML au format HTML en affichant le total des opérations de débit et le total des
opérations de crédit.
6. Créer une feuille de style XSL qui permet d’afficher au format HTML les opérations de type
CREDIT d’un relevé bancaire.
