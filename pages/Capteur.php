<?php
require_once("Produit.php");
    class Capteur extends Produit {
        private $valeur;
        public function getNom()
        {
            return parent::getNom(); // TODO: Change the autogenerated stub
        }

        /**
         * @param mixed $valeur
         */
        public function setValeur($valeur): void
        {
            $this->valeur = $valeur;
        }
        public function getModele()
        {
            return parent::getModele(); // TODO: Change the autogenerated stub
        }
        public function getNumeroSerie()
        {
            return parent::getNumeroSerie(); // TODO: Change the autogenerated stub
        }
        public function setModele($modele): void
{
        parent::setModele($modele); // TODO: Change the autogenerated stub

}
        public function setNom($nom): void
        {
            parent::setNom($nom); // TODO: Change the autogenerated stub
        }
        public function setNumeroSerie($numeroSerie): void
        {
            parent::setNumeroSerie($numeroSerie); // TODO: Change the autogenerated stub
        }

        /**
         * @return mixed
         */
        public function getValeur()
        {
            return $this->valeur;
        }

    }